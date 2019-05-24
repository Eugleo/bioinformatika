#lang pollen

◊define-meta[title]{GAMSA}
◊define-meta[header]{gamsa}
◊(define-meta toc #t)
◊define-meta[authors ("Evžen Wybitul")]

◊title{GAMSA}

GAMSA (genetic algorithm multiple sequence alignment) je můj program, ve kterém jsem se --- jak už název napovídá --- pokusil implementovat MSA pomocí genetického algoritmu. Kód je dostupný na ◊link["https://github.com/Eugleo/gamsa"]{mém GitHubu}. Informace jsem čerpal především z těchto dvou článků:
◊ls{
    - ◊link["http://www.funpecrp.com.br/gmr/year2007/vol4-6/pdf/Xm0016.pdf"]{A simple genetic algorithm for multiple sequence alignment}
    - ◊link["https://www.researchgate.net/publication/234831605_Multiple_Sequence_Alignment_Using_a_Genetic_Algorithm_and_GLOCSA"]{Multiple Sequence Alignment Using a Genetic Algorithm and GLOCSA}
}

◊section{Princip funkce}

High-level popis funkce je velice podobný jako u všech GA, tedy
◊ls{
    # Ze seedu vygenerujeme počáteční populaci (každé jedné populaci pak říkáme ◊em{generace}).
    # Ze současné generace vytvoříme různými rekombinačními způsoby novou generaci o stejném počtu jedinců. Tento bod mnohokrát opakujeme.
        - Často se hodí vědět, jak "dobrý" je daný ◊em{jedinec}; k tomu slouží takzvaná ◊em{fitness function}. Když budu v textu mluvit o "nejlepším jedinci", budu mít vždy namysli jedince s nejvyšší hodnotou fitness function.
    # Z poslední generace vybereme nejlepšího jedince, který je výstupem celého programu.
}

Celý proces si lze představit jako prohledávání grafu, kde vrcholy jsou různí jedinci a hrany mezi nimi jsou různé rekombinační operace. Graf je ale tak velký, že běžné způsoby prohledávání na něj nefungují, proto se používají genetické algoritmy.

◊subsection{Sequence alignment}

◊em{Pro více informací viz například sekce o sequence alignmentu ◊link["https://eugleo.github.io/bioinformatika/doc/zaklady-bioinformatiky/notes.html#Pairwise%20sequence%20alignment"]{v mých zápisech}.}

Multiple sequence alignment je bioinformatická metoda, která se snaží v několika sekvencích (většinou proteinech) najít prvky (většinou aminokyseliny), které pocházejí ze stejného předka.

V praxi to znamená, že máme ◊${n} sekvencí znaků, které se snažíme nějak srovnat pod sebe. Sekvence pod sebe srovnáváme tak, že do nich doplňujeme mezery; výsledému souboru původních sekvencí spolu s doplněnými mezerami říkáme ◊strong{alignment}. Například pro ◊${n = 2} bychom mohli dostat vstup

◊highlight['text]{
    VLSEGKTEAPV
    VLSPAPV
}

ze kterého bychom poskládali například následující alignment

◊highlight['text]{
    VLSEGKTEAPV
    VLS--P--APV
}

V kódu by tedy klidně mohl alignment vypadat nějak takto (i když v reálu jej implementuji trochu jinak)
◊highlight['hs]{
    data Alignment = Alignment
        { aProteins :: [Protein]
        , aProteinGaps :: [[Gap]]
        }
}

Alignmentů existuje (nekonečně) mnoho, byly proto zavedeny způsoby, jakými je možné odlišit dobré alignmenty od těch špatných. Nejčastější metodou je skórování pomocí ◊strong{skórovacích tabulek} (scoring matrices), například BLOSUM 62 nebo PAM 250, které vycházejí z experimentálních pozorování proteinů. Skórovací tabulky obsahují skóre pro všechny možné kombinace písmen (aminokyselin, AK), je tedy možné alignment jednoduše projet sloupec po sloupci, v daném sloupci oskórovat všechny dvojice znaků a výsledky sečíst.

◊subsection{Tvorba generací}

Program na vstupu očekává cestu k souboru, ve kterém bude na každém řádku sekvence AK a pomlček, které budou představovat mezery --- to bude počáteční (seed) alignment. Z něj je poté vygenerována úvodní populace, která čítá 100 jedinců; tento počet je možné změnit, i když zatím ne zrovna uživatelsky přívětivě.

Každá další generace je z té současné vytvořena následujícím způsobem:
◊ls{
    # ◊${n} nejlepších jedinců je přeneseno do další generace beze změny
    # je pořádáno ◊${t} turnajů, každého z nich se účastní ◊${u} náhodně vybraných jedinců
        - nejlepší ze všech účastníků se posouvá do další generace a je upraven pouze mutací
        - zbylí účastníci turnaje jsou rekombinováni s výhercem a poté ještě mutováni
}

Velikost každé generace je tedy dána
◊$${v_{gen} = n + t \cdot u}
Výchozí hodnoty jsou ◊${n = 1}, ◊${t = 33}, ◊${u = 3} a tedy ◊${v_{gen} = 100}, ale dají se relativně snadno změnit.

◊subsection{Rekombinační operace}

Používám dva druhy rekombinačních operací: ◊strong{mutace} a ◊strong{crossovery}. Oba druhy se zabývají pouze změnou rozmístění, počtu a velikosti mezer v alignmentu, původní sekvence AK zůstávají nezměněny. Proteiny proto reprezentuji jako

◊highlight['hs]{
    data Protein = Protein
        { pSeq :: Vector Char
        , pGaps :: [Gap]
        }
}

protože sekvence jsou konstatní, zatímco mezery se neustále mění.

◊ls[#:t "Mutace"]{
    - mutujeme jedince, tedy alignment, ale mutace samotné se týkají pouze jednoho proteinu z celého alignmentu
    - v rámci mutace při tvoření nové generace může být jeden alignment zmutován i několikrát za sebou
    - rozlišuji pět druhů mutací
        # ◊code{insert} vloží do náhodného proteinu na náhodné místo mezeru, jejíž velikost je náhodná, ale odvíjí se od průměrné velikosti mezer v seed alignmentu
        # ◊code{increase} zvětší v náhodném proteinu náhodnou mezeru o náhodnou velikost
        # ◊code{descease} ditto, ale zmenší, a vždy pouze o 1
        # ◊code{delete} zkusí v náhodném proteinu vymazat náhodnou mezeru, šance úspěchu se snižuje s délkou mezery
        # ◊code{shift} přesune v náhodném proteinu náhodnou mezeru na jiné místo, případně je-li toto místo již nějakou mezerou obsazeno, prohodí velikosti těchto dvou mezer
    - jednotlivé druhy mutace ("mutační operace") jsou aplikovány s různou pravděpodobností; tyto pravděpodobnosti se navíc v průběhu programu přizpůsobují tomu, jak je který druh mutace úspěšný
        - mechanismus je v detailu popsaný v druhém paperu, v podstatě se ale jedná o to, že dáváme do souvislosti skóre před mutací a po ní s počtem aplikací konkrétní mutační operace
}

◊note{Rozhodl jsem se nakonec upustit od dynamického přizpůsobování pravděpodobností, místo toho jsem pro insert, increase, decrease, delete a shift zavedl fixní pravděpodobnosti 0.5, 0.2, 0.1, 0.1, 0.1 (respektive). Více informací v sekci ◊link["#Osobní poznámky"]{osobní poznámky}.}

◊ls[#:t "Crossovery"]{
    - jsou používány pro alignmenty, které prohrají turnaj
    - rozlišuji dva druhy crossoverů
        # horizontální: z rodičovských alignmentů vznikne potomek tak, že pro každý protein získá všechny mezery náhodně z jednoho, nebo druhého rodiče
        ◊pre{
            Rodiče:
            ◊strong{VLSEGKTEAPV}     VLSEGKTEAPV
            ◊strong{VLS--P--APV}  +  --VLSP--APV
            ◊strong{-EGKT---A--}     ---EGKTA---

            Potomek:
            ◊strong{VLSEGKTEAPV}
            --VLSP--APV
            ◊strong{-EGKT---A--}
        }
        # vertikální: z rodičovských alignmentů vznikne potomek tak, že pro každý protein všechny mezery před ◊${k}-tou AK převezme od jednoho z rodičů a mezery po ◊${k}-té AK převezme od druhého
        ◊pre{
            Rodiče:
            ◊strong{VLSEGKTEAPV}     VLSEGKTEAPV
            ◊strong{VLS--P--APV}  +  --VLSP--APV
            ◊strong{-EGKT---A--}     ---EGKTA---

            Protomek (k = 3):
            ◊strong{VLS}EGKTEAPV
            ◊strong{VLS}P--APV
            ◊strong{-EGK}TA---
        }
}

Je vidět, že při vertikálním crossoveru se někdy pokazí "blokovitost" celého alignmentu. V takovém případě jsou doplněny mezery na konec všech kratších proteinů.

◊subsection{Fitness function}

Jako fitness funkce mi posloužil běžný pairwise sequence alignment: v rámci alignmentu spolu podle skórovací tabulky srovnám všechny dvojice proteinů a sečtu jejich skóre. Používám tabulku ◊link["https://en.wikipedia.org/wiki/BLOSUM"]{BLOSUM62}, která se pro alignmenty proteinů používá běžně.

Samozřejmě se hodnotí i mezery; protože mezery v přírodě nevznikají příliš často, mají vždy záporné skóre. Navíc vznik mezery je méně pravděpodobný než rozšíření nějaké již existující, takže "první blok" mezery mívá menší skóre než všechny ostatní bloky (v rámci jedné kontinuální mezery). Při počítání skóre úseku, kde jsou v obou hodnocených proteinech mezery, se daný úsek přeskakuje. Mezery na konci proteinu se zpravdila napočítají, ale já je počítám, protože jsem tak dostal lepší výsledky.

◊section{Orientace v kódu}

Kód je rozdělen na několik modulů.

◊definitions{
    ◊term["Model"]{
        Modul obsahující definice základních datastruktur. Zde ti doporučuji začít číst.
    }

    ◊term["MultipleSeqAlignment"]{
        Hlavní modul celého balíčku, kombinuje všechny ostatní moduly. Jsou zde tvořeny nové generace a dají se zde také změnit základní vlastnosti celého algoritmu, např. počet generací, velikost populace atd.
    }

    ◊term["Crossover, Mutation, Scoring (+ ScoringMatrix), Utils"]{
        Moduly obsahující kód crossoveru, mutací, skórovací funkce a pomocných funkcí (respektive). Zvláště v mutation je (oproti zbytku balíčku) relativně zajímavý kód, kde používám monad transformery.
    }

    ◊term["MutationProbabilities"]{
        Modul, který vlastně není používán---sloužil k dynamickému přizpůsobování pravděpodobností jednotlivých typů mutací. Na řádku 63 lze odkomentovat kód, který tuto funkcionalitu opět zapne.
    }
}

Funkce ◊code{main} (a potažmo ◊code{stack exec}) čeká jeden argument: cestu k textovému souboru, ve kterém bude na každém řádku jedna sekvence znaků aminokyselin a pomlček. Soubor tedy může vypadat například následovně:
◊highlight['txt]{
    ---MAIGFVIVTFQEQGETEYKNCELDKNQRQCVQYA--LKAR----------P-------LRCY---IPKNPYQYQVWYVVTSSYF------------
    -------------------S------KMTEEECRGYYYVYKDGDPT-----Q--------------MELRPRQ-----W---IHNDFHFDNVLSAMMS-
    -----------------------------------ISMGLESS-TISVVKILRVLRLLQFMFACIGVQLFKGK------------FFSCNDL-------
    FTNFILLFILLSSAALAAED------PIRAESVRNQILGYFDIAFTSVFTVEIVLK-----MTTYGAFLHKGS-----F---CRNYFNILDLLVVAVSL
    ------------------------------------------------------------------------------------EYLMFIDVILS----
}

Obecně je lepší na vstupu dávat už naalignované sekvence, které poté algorimus už jen vylepší. Hledání alignmentů úplně od píky mu moc nejde (což je obecná vlastnost všech genetických MSA).





◊section{Osobní poznámky}

Do tohoto projektu jsem šel s naprostou neznalostí genetických algoritmů, jen jsem o nich předtím párkrát někde četl. Už pár let si však hýčkám představu, že někdy nějaký napíšu; myšlenka, která za nimi stojí, mi vždycky přišla geniální. Nechat přírodu a náhodu udělat těžkou práci za nás... Boží!

Ukázalo se, že až tak idylické to s nimi není. Člověk má k dispozici velkou spoustu různých čudlíků, páček a vypínačů, všechny bez popisných cedulek, z nichž některé vypínače ani nejsou zapojeny, a některé sice jsou, ale pouze zapínají a vypínají jiné vypínače atd. Někdy je to až k zbláznění.

Proto jsem byl nakonec nucen odstoupit od postupu, který byl prosazován v druhém článku, totiž od dynamické úpravy pravděpodobností jednotlivých mutací. Z jakéhosi záhadného důvodu, který se mi nepodařilo najít ani po několika probdělých nocích, neustále roste pravděpodobnost ◊code{insert} a to až do té míry, že by pravděpodobnosti ostatních funkcí klesly na 0. Přesto však výsledný alignment mnoho mezer nemá, spíše naopak.

Když se toto dynamické chování vymění za fixní, program se několikanásobně zrychlí a je tedy možné nechat běžet řádově více generací, což nakonec vede k lepšímu výsledku za stejný čas. S implementací dynamických pravděpodobností bylo však tolik práce, že jsem se rozhodl tam veškerý kód nechat (a jde zprovoznit odkomentováním řádku 63 v modulu ◊code{Genetics.MutationProbabilities}). Snad se mi to někdy ještě podaří opravit.

Moc rád bych také implementoval paralelní běh kódu; když jsem spustil profiler, vyšlo mi, že nejvíce času se ztratí (dle očekávání) ve skórovací funkci. Ta nijak neovlivňuje ostatní části programu a navíc se skládá z mnoha nezávislých částí, a tak se paralelizace přímo nabízí.
