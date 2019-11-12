#lang pollen

◊define-meta[title]{Základy biochemie}
◊define-meta[header]{zápisy}
◊(define-meta toc #t)

◊define-meta[authors ("Evžen Wybitul")]

◊title{Úvod}

Biochemie pomáhá vysvětlovat rozmanitost přírody --- všechno tvorstvo staví na několika základních principech, 20 AK, třech druzích biopolymerů... A složitost v přírodě vzniká hierarchicky kombinací těchto faktorů. Zároveň mnoho jevů, které jsou na makroúrovni těžko vysvětlitelné, má svůj základ právě v biochemii (nebo související molekulární biologii).

◊ls[#:t "Historie oboru"]{
    - L. Pasteur (19. stol.)
        - položil základy biochemie
        - fermentaci způsobují mikroorganismy
        - každý život pochází ze zárodku (žába nevznikne z bahna)
    - E. Buchner (přelom 19. a 20. stol.)
        - fermentaci je schopen navodit buněčný extrakt
        - popření vitalismu: to, čeho je živý organismus schopen, ◊em{je možné} analyzovat, není to dáno žádnou "životní silou" (◊em{vis vitalis})
        - fermentace je chemický proces, je nutné se ptát, co je to na chemické úrovni => počátek studia glykolytické dráhy
        - dostal Nobelovu cenu
    - A. Harder, Hans von Euler-Chelpin
        - dialýza
}

◊box["Dialýza"]{
    ◊ls[#:t "Postup"]{
        # do kádinky přidáme pufr
        # do kádinky přidáme střívko (semipermeabiní membrána)
        # přes póry projdou jen molekuly s určitou velikostí, cut-off point je několik tisíc ◊u{Da}
            - malé molekuly (fruktóza) přes střívkou projdou
            - stejná koncentrace uvnitř i vně střívk
    }

    Zjistilo se, že velké molekuly, které přes membránu neprošly (tedy proteiny, pozn. profesora) jsou termolabilní. Došlo poprvé k separaci, frakcionaci, rozdělení kvasinek.
}

◊ls{
    - dále pak výzkumy malých molekul (byly dobře dostupné), objevy vitamínů, základních metabolických drah
    - J. Summer (1926)
        - krystalizace proteinu ureázy z bobů: velký milník, čistý materiál, navíc uměl katalyzovat štěpení močoviny => proteiny jako nositelé enzymové aktivity
    - popisy glykolýzy, cyklu kyseliny citrónové, určení struktury DNA, krátce na to určení krystalové struktury myoglobinu(protein z vorvaně)
    - poznání transformace energie (oxidativní fosforylace), fungování buňky a regulace jejího metabolismu
        - objevy všech velkých metabolických drah, počátek hledání jejich regulace
    - později (90. léta -- součastnost) spíše už ◊strong{systémové studium}
        - jak se soubory molekul v buňce chovají, studium celého souboru proteinů v buňkách (např. jak se liší soubory proteinů kvasinek žijících v různých podmínkách)
        - studium proteomu, metabolomu, etc., pomocí molekulárně biochemických a hmotnostně spektromektických přístupů, které umožňují vše pozorovat najednou
        - velký posun v popisu diverzity – víme o všem, co se organismu týká => můžeme skoro definitivně rozhodnout, čemu jsou organismy příbuzné, ptáme na celé soubory genů a proteinů
}

◊box["Co je potřeba k pochopení přednášky"]{
    ◊ls{
        - stavba atomu (elektronová konfigurace základních biogenních prvků, jak dochází k hybridizaci, co jsou orbitaly, prostorová struktura v hybridizacích)
        - stavba jednoduchých molekul, zejména těch založených na uhlíku
            - znát jeho elektronovou konfiguraci a záležitosti hybridizace
            - pouze uhlík z celé tabulky je schopen tvořit tak akorát stabilní řetězení ◊chem{C-C-C-C-...}
                - ◊chem{N-N-N-N-...} nestabilní
                - ◊chem{O-Si-O-Si-...} až příliš stabilní
        - periodické vlastnosti prvků: jak se v tabulce mění elektronegativita, velikost iontu, elektronová afinita, ionizační energie, velikost elektronového obalu
        - co je to kovalentní vazba, vodíkové můstky a další interakce
        - základní poznatky o chemických rovnováhách
        - základy termodynamiky: první a druhý zákon, zachování energie, entropie
        - kyseliny, zásady, pufry

    }
}

◊title{Biomolekuly}

◊section{Voda}

◊ls{
    - molekula vody je asymetrická
        - sp3 hybridizace: vazby směřují do vrcholů čtyřstěnu, ve dvou jsou vodíky a ve dvou nevazebné elektronové páry
    - tvoří elektrický dipól: na části molekuly je parciální elektrický náboj
        - kyslík je mnohem elektronegativnější, elektronegativita rozhoduje o distribuci elektronů na vazbě; kyslík přitahuje vazebný pár větší silou, elektronová hustota bude tedy posunuta ke kyslíku
}

◊img["water-molecule.jpg" #:w 400]{Znázornění molekuly vody}

◊box["Důležité vlastnosti vody"]{
    ◊ls{
        - vysoká dielektrická konstanta => umí účinně separovat náboje
            - voda je v tom v rámci běžných rozpouštědel nejlepší => ionty, které by spolu normálně reagovaly, se udrží ve vodě zvlášť
        - vysoká tepelná kapacita (pufr planety)
        - vysoká měrná skupenská tepla => odpařováním účinně ochlazujeme systém
            - včely musí mávat křídly, když chtějí ochladit úl
        - vyšší hustota vody ve srovnání s ledem => vodní nádrže zamrzají od povrchu
        - vysoké povrchové napětí => týká se řady věcí
            - souvisí s tvorbou vodíkových můstků
        - vysoká vodivost
    }
}

◊img["hydrogen-bond.png" #:w 400]{Schéma vodíkového můstku}

Strukturu a vlastnosti vody silně ovlivňuje tvorba vodíkových můstků.

◊ls[#:t "Vodíkové můstky"]{
    - ◊chem{O-H} vazba má ze 33% iontový charakter
    - tvoří se hlavně mezi dvěma molekulami vody
        - mohou se ale tvořit i s jinými (částečně) polárními látkami => polární látky se ve vodě dobře rozpouštějí
            - příklady skupin reagujících s vodou: hydroxylová, keto, karboxylová (dokonce se třemi molekulami)
    - parciálně kladně nabitý ◊chem{H} se naváže na volné el. páry, které také míří do vrcholů čtyřstěnu
        - nic jiného než vodík není tak malé, aby to dovedlo
    - energie vazby cca ◊u{20 kJ/mol}, asi o řád méně než typická kovalentní vazba (např. ◊chem{C-C} má asi ◊u{350 kJ/mol}).
        - vzniká jich ovšem mnoho, čili i přes nízkou energii mají velký vliv
    - vzdálenost je jen 1.8 ◊angs, což je méně než VdW vzdálenost (2.6 ◊angs) bez této interakce
    - každá molekula vody může vázat 4 partnery (dva jako donor, dva jako akceptor)
        - u ledu tomu tak opravdu je, jeho krystaly mají hexagonální tvar => má nižší hustotu než voda
        - v kapalině je tato vlastnost také skoro zachována: vysoké procentomoekul má 4 partnery, samotní konkrétní partneři se ale stále mění
            - fluktuující struktury obsahující desítky molekul: stále se tvoří a zanikají (co 10--11 sekund) => tvorba až sedmičlenných clusterů
            - vysoká mobilita molekul; donedávna jsme netušili, jak extenzivní ty interakce jsou (jde o celou jejich síť)
    - ionty ◊chem{OH-} a ◊chem{H3O+} jsou vysoce mobilní (viz obrázek)
}

◊img["common-h-bonds.png" #:w 400 #:label "{H-můstky běžně nalézané v biomolekulách"]{H-můstky běžné v biomolekulách}

◊ls[#:t "Srovnání vody s jinými rozpouštědly"]{
    - dielektrická konstanta zdaleka nejvyšší, i když ty molekuly jsou si jinak podobné
        - dielektrická konstanta udává míru odporu při vytváření elektrického pole v rámci nějaké látky vzhledem k vakuu
        - např. aceton je také asymetrický s dipólovým momentem => tento jev není způsoben dipolaritou
    - má vysoká měrná skupenská tepla
        - např. při odpařování musíme dodat kromě normálního tepla ještě teplo navíc, abychom rozbili H-můstky
    - dobře separuje ionty => ve vodě mohou být látky rozpuštěné v daleko vyšší koncentraci než v jiných rozpouštědlech
}

◊img["water-proton-hop.png" #:w 400]{Protonové skoky mezi molekulami vody}

◊ls[#:t "Tvorba micel"]{
    # nepolární látka ◊${L} (nebo látka s nepolární částí) s vodou neinteraguje, molekuly vody jsou maximálně na VdW vzdálenost
    # kolem ◊${L} vzniká vrstvička vody s omezenou pohyblivostí (nemůže se k ní přiblížit)
    # tato vrstvička se váže přes H-můstky na další molekuly, ty zase na další, ... => mnoho molekul má najednou omezený počet stupňů volnosti
    # systém směřuje k maximální entropii => molekuly se ◊${L} shlukují k sobě, v součtu tím omezí (= uspořádají) nejmenší možný počet molekul vody
}

Body 1. a 2. probíhají ve všech polárních rozpouštědlech, avšak chování a unikátnost vody v tomto (opět) silně ovlivňují H-můstky. Tento princip stojí za tvorbou ◊em{biologických membrán}. Dal by se popsat následující rovnicí

◊$${\Delta G = \Delta H - T \Delta S,}

kde ◊${\Delta S} značí změnu entropie, ◊${\Delta H} změnu entalpie. Pokud je ◊${\Delta G > 0}, děj samovolně neprobíhá; při rozpouštění nepolárních látek ve vodě je ◊${\Delta S < 0} a tedy ◊${\Delta G > 0}.

◊definitions{
    ◊term["Hydrofobní kolaps"]{
        Hypotetický způsob vzniku terciální struktury proteinů; podle této hypotézy se proteiny zfoldují na základně hydrofobického efektu popsaného výše.
    }
}

Hydrofobní interakce jsou vlastně ◊strong{negativně vyvolané reakce}: jsou vyvolané absencí přitahování molekul rozpouštědla a rozpouštěné látky

◊subsection{Acidobazické vlastnosti vody a kyselin}

◊definitions{
    ◊term["Brønstedova kyselina"]{
        Látka, která může poskytnout protony. Obdobně zásada je látka, která může protony přijmout. Po ztrátě protonu se Brønstedova kyselina stává svou ◊strong{konjugovanou zásadou}.
    }

    ◊term[""]{

    }

    ◊term["pufr"]{
        Acidobazický pufr je směs slabé kyseliny a její konjugované zásady v roztoku, který má pH blízké ◊${pK_a} kyseliny.
    }
}

◊$${
    \text{pH} = \log \frac{1}{[\ce{H+}]} = -\log [\ce{H+}] = pK_a - \log \frac{[\ce{HA}]}{\ce{A-}} \stackrel{\text{pro vodu}}{=} -\log [\ce{H3O+}],
}

přičemž předposlední rovnosti se říká Hendersonova-Hasselbalchova rovnice a popisuje vztah mezi složením pufru a jeho kyselostí. Pro vodu zároveň platí

◊$${K_{eq} = \frac{[\ce{H+}][\ce{OH-}]}{[\ce{H2O}]},}

což vychází z obecnější rovnice

◊$${\ce{A + B <=> C + D}: K_{eq} = \frac{[\ce{C}][\ce{D}]}{[\ce{A}][\ce{B}]}.}

Z měření vychází, že při 25 ◊deg C ◊${[\ce{H2O}] = 55.5}, a tedy

◊$${K_{eq} = \frac{[\ce{H+}][\ce{OH-}]}{55.5} \implies 55.5 K_{eq} = [\ce{H+}][\ce{OH-}] = K_w,}

kde ◊${K_w} značí ◊em{iontový součin} vody a je za běžných podmínek roven ◊${10^{-14}}.

◊ls[#:t "Titrace"]{
    - používá se k zjištění množství kyseliny v roztoku
    - do roztoku se přidává ◊chem{NaOH} (nebo jiná silná zásada) o známé koncentraci, dokud se roztok neneutralizuje
    - z koncentrace a objemu použité zásady se spočítá pH původního roztoku
        - vývoj pH roztoku v závislosti na množství přidané zásady se zaznamnává do tzv. ◊em{titrační křivky}, viz obrázek
            - křivku lze popsat Hendresson-Hasselbachovou rovnicí
            - v inflexním bodě platí ◊${\text{pH} = pK_a}
            - v části, kde pH roste jen pomalu, se systém chová jako pufr
}

◊img["titration-curve.png" #:w 400 #:label "Titrační křivka"]{Titrační křivka}

Pokud budeme vybírat pufr, musím volit tak, aby poměr soli a kyseliny byl roven jedné právě v oblasti, ve které budeme pracovat.

◊ls[#:t "Polyprotní kyseliny"]{
    - acidobazické skupiny v jedné molekule se navzájem ovlivňují
    - pokud se ◊${pK_a} jejich různých ionizačních stupňů liší více než o 2 až 3 jednotky pH, můžeme je při výpočtech pH úspěšně považovat za směs jednotlivých slabých kyselin
        - pro polyprotní kyseliny s hodnotami pK lišícími se méně než o tuto hodnotu jsou pozorované molekulové ionizační konstanty prostě vztaženy na mikroskopické ionizační konstanty disociujících skupin.
}

◊img["polyprotic-acid.png" #:w 400]{Titrační křivka polyprotní kyseliny}

◊section{Aminokyseliny}

◊meta{Předpokládají se základní znalosti struktury a vlastností AK, viz např. ◊link["https://eugleo.github.io/bioinformatika/doc/zaklady-bioinformatiky/notes.html#Struktura%20proteinů"]{Zápisy z bioinformatiky} nebo ◊link["https://eugleo.github.io/bioinformatika/doc/biopolymery/notes.html#Stavba%20proteinů"]{zápisy z biopolymerů}. Je nutné znát i jendotlivé zkratky a umět nakreslit chemickou strukturu každé AK.}

◊img["aa-venn.png" #:w 400]{Základní vlastnosti AK}

◊ls[#:t "Důležité vlastnosti AK"]{
    - náboj, titrační křivka (viz dále)
    - velikost (viz obrázek níže)
    - charakter skupin na R, zda jsou či nejsou aromatické
        - pozn. prolin není aromatický, jeho cyklus ale významně ovlivňuje vlastnosti řetězce --- je v daném místě méně pružný
    - leucin, izoleucin, valin, jsou vybaveny větveným alifatickým řetězcem
        - izobutylová skupina je chováním podobná alifatickému uhlovodíku => je hydrofobní
    - ◊chem{S-H} skupina v cysteinu bude oxidovaná či redukovaná v závislosti na prostředí, může tvořit ◊chem{S-S} můstky ať už s jiným cysteinem, nebo s jinými látkami
    - jeden konec lysinu se chová polárně, druhý ne
        - aminoskupina má kolem pH 7 kladný náboj
        - alifatický řetězec je hydrofobní
    - optická aktivita
    - všechny až na Gly jsou asymetrické
        - Gly má na flexibilitu řetězce opačnou vlastnost než Pro, zvyšuje ji
}

Všechny tyto vlastnosti se různě kombinují a přispívají tak k celkovým vlastnostem dané AK.

◊ls[#:t "Optická aktivita AK"]{
    - AK tvoří stereoizomery, tzv. ◊em{entantiomery}, jsou svým zrcadlovým obrazem
    - nejsou chemicky rozlišitelné, ale stáčejí rovninu polarizovaného světla na různé strany
        - pozor, ne vždy L doleva a D doprava
    - běžně se vyskytují L-formy
    - jejich názvosloví se odvozuje od Fisherovy projekce u cukrů
    - Thr a Ile mají více center asymetrie (více chirálních uhlíků)
        - tvoří tzv. ◊em{diastereomery} (narozdíl od enantiomerů nejsou svým zrcadlovým obrazem)
        - rozlišuje se pak například L-Thr a L-allo-Thr
}

◊img["isomers1.png"]{Rozdíly mezi diastereomery a enantiomery}

Existuje i jiný systém pojmenovávání stereoizomerů L a D, a to tzv. ◊em{R/S systém} (neboli Cahn-Ingold-Prelog).

◊ls[#:t "R/S systém"]{
    - nakreslíme šipku od substituentu s nejvyšší prioritou k tomu s nejnižší prioritou
        - priorita substituentů je určována podle velikosti skupiny
        - vodík se umístí tak, aby byl za uhlíkem
    - pokud jde šipka po směru hodinových ručiček, jedná se o R sloučeninu (rectus = pravý), jinak se jedná o S sloučeninu (sinister = levý)
    - všechny AK v těle, s výjimkou cysteinu, jsou (S)- sloučeniny
}

◊img["r-s-enantiomer.png" #:w 400]{Pojmenování R/S systémem}

◊ls[#:t "Biologicky aktivní látky odvozené od AK"]{
    - histamin: význam v alergických reakcích (nastane dekarboxylace histidinu, vznikne histamin)
        - histidin získáváme z potravy, neumíme ho syntetizovat
    - dopamin: prekurzor neurotransmiterů, regulačně aktivní látka
    - kyselina gama-aminomáselná (vzniká dekarboxylací kyseliny glutamové)
    - látky odvozeny jednoduchými reakcemi z AK (velmi důležité)
    - některé AK jsou součástí metabolismu látek, které se běžně v proteinech nevyskytují
        - citrulin (~ Arg) a ornitin (~ Lys) jsou součástí cyklu močoviny
}

◊subsection{Acidobazické vlastnosti AK}

Příklad disociační křivky na Gly.

◊img["glycine-titration.png" #:w 400]{Titrační křivka Gly}

◊note{
    Tato křivka se týká volné AK – pro Gly vázaný v proteinu by takto nevypadala. Gly na C- nebo N- konci si však jednu skupinu zachová, což může hrát roli.

    Jedná se o zjednodušený model toho, jak se chová látka s více disociovatelnými skupinami. Např. Lys se bude chovat mnohem složitěji, protože má tři acidobazické skupiny, které navíc nejsou dostatečný počet pH bodů od sebe, čili se ovlivňují.
}

◊ls[#:t "Disociační křivka Gly"]{
    - při velice nízkém pH je glycin plně protonovaný
    - tvar křivky vychází z Hendersonovy-Hasselbachovy rovnice
    - obě disociace jsou si velmi vzdálené => neovlivňují se
    - v bodě PI, tzv. ◊em{izoelektrický bod}, má AK nulový náboj => nepochybuje se v elektrickém poli
    - v bodech ◊${pK_1} a ◊${pK_2} jsou už plně disociované skupiny ◊chem{COOH} a ◊chem{NH3}, respektive
    - ◊${pK} karboxylové skupiny je asi 2.2, ◊${pK} aminoskupiny je asi 9.4
}

◊meta{Je prý důležité umět popsat chování oněch dvou disociujících se skupin (jednoduché, oba body daleko od sebe a neovlivňují se). Kromě toho je také nutné umět nakreslit disociační křivku.}

Protein se skládá z řádově stovek AK, bude proto mít velice složitou disociační křivku. Některé AK budou acidobazicky zajímavé pouze, když budou na konci proteinu; jiné budou zajímavé i jindy, a to při různých hodnotách pH (viz obrázek).

◊img["aa-pka.jpg" #:w 400]{pKa jednotlivých aminokyselin}

Jakmile se např. Asp dostane do pH7, bude ze větší části již naprosto disociovaná a nebude se již chovat jako kyselina. Obecně, pokud zvyšujeme pH (= zvyšujeme zásaditost prostředí), budou se skupiny zbavovat protonů --- mění se ale to, jaký náboj tímto AK získají.

Důležitá je imidazolová skupina, která ma jako ◊em{jediná} ◊${pK_a} blízké pH fyziologických systémů (konkrétně kolem 6), čili kolem tohoto neutrálního pH bude mít právě polovinu skupin deprotonovanou.

◊subsection{Posttranslační modifikace AK}

◊ls{
    - úpravy proteinu po translaci
    - methylace: důležité na histonech
    - fosforylace: zásadní regulační funkce
        - serin, threonin, tyrosin
    - acetyace: typicky Lys, vnik amidové vazby, která mění pH (při pH 7 pak už Lys nebude kladně nabitý)
        - když Lys acetylujeme v jádře, ovlivňujeme interakce proteinů s NK (ty jsou totiž záporně nabité)
    - karboxylace
}

Například kurděje jsou avitaminóza poškozující schopnost hydroxylace prolinu, který je potřeba pro pojivové tkáně: první projev je krvácení z
dásní, způsobené problémy s extracelulární matrix.