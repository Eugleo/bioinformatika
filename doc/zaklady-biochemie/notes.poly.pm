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
            - stejná koncentrace uvnitř i vně střívka
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

◊box["Štěpení C-H vazeb"]{
    ◊ls{
        - ◊strong{homolytické štěpení}
            - vede ke vzniku radikálů, každý z účastníků vazby získává jeden elektron z vazebného páru
        - ◊strong{heterolytické štěpení}
            - vede ke vzniku iontů
            - heterolytickým štěpením mohou vznikat významné nukleofilní skupiny (hydroxy, amino, imidazolová, atd.) i elektrofilní skupiny (protony, ionty kovů, atd.)
    }

    V biologických systémech nejčastěji vzniká záporně nabitý ◊chem{C} (s oběma elektrony z páru) a proton ◊chem{H+}. Pokud je k dispozici koenzym ◊chem{NAD+} nebo ◊chem{NADP+}, může vzniknout kladně nabitý ◊chem{C+} a ◊chem{H-}.

    ◊img["homolytic-cleavage.png" #:w 350]{Homolytické a heterolytické štěpení}
}

◊box["Nukleofily a elektrofily"]{
    ◊definitions{
        ◊term["Nukleofil"]{
            Molekula, které přebývají elektrony, chce se jich zbavit.
        }

        ◊term["Elektrofil"]{
            Molekula, kteréchybí elektrony, chtěla by nějaké dostat. Často jí jsou předány nukleofilem.
        }
    }

    ◊img["nucleophiles.png" #:w 350]{Příklady nukleofilů a elektrofilů}
}

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

◊img["common-h-bonds.png" #:w 400]{H-můstky běžné v biomolekulách}

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

◊section{Kovalentní struktura proteinů}

◊meta{Primární, sekundární, terciární i kvarterní struktura proteinů je rozebrána i zde: ◊link["https://eugleo.github.io/bioinformatika/doc/zaklady-bioinformatiky/notes.html#Struktura%20proteinů"]{Zápisy z bioinformatiky} nebo ◊link["https://eugleo.github.io/bioinformatika/doc/biopolymery/notes.html#Stavba%20proteinů"]{zápisy z biopolymerů}.}

Proteiny jsou tvořeny AK spojenými peptidickou vazbou, nebo ◊chem{S-S} vazbou mezi cysteiny (nejedná se o můstek, nýbrž o plnohodnotnou vazbu). Např. u inzulinu tím vzniká složitejší kovalentní struktura.

◊ls[#:t "Pojmy"]{
    - cis, trans uspořádání
        - vazby po prolinu i v cis, asi z 10%
    - torzní úhly ◊${\psi} a ◊${\phi}
    - rezonance ve vazbě, planarita
        - pokud chceme planaritě zabránit, musíme udělat z rezonanční vazby vazbu jednoduchou (ovlivněním náboje, ovlivnění ◊chem{C-O})
    - rotace kolem ◊${\text{C}\alpha}
    - denaturace (ztráta pevné 3D struktury)
    - primární, sekundární, terciární, kvarterní struktura
    - fibrilární a globulární proteiny
        - fibrilární jsou založené na neustálém opakování sekundárních struktur
        - první analýzy se dělaly na fibrilárních proteinech, je to jednodušší
    - tři druhy helixů
    - paralelní a antiparalelní uspořádání beta-řetězců
}

Všechny tyto pojmy lze nalézt popsány v odkazech výše.

◊ls[#:t "Alfa helix"]{
    - ◊chem{NH} a ◊chem{CO} skupiny, které jsou součástí peptidové kostry, nejsou volné, ale jsou vůči sobě orientovány a interagují H-můstky
        - můstky budou téměř rovnoběžné s osou helixu
        - všechny vnitřní skupiny jsou angažovány => stabilizace struktury
    - ◊chem{NH} a ◊chem{CO} skupiny na koncích nejsou součástí H-můstků a tak získáváme částečně nabitou strukturu, která má dipólový moment a podle toho se bude orientovat v el. poli
        - ◊chem{NH} parciální kladný náboj, ◊chem{CO} parciální záporný
    - R skupiny AK směřují vně helixu
    - jedna rotace helixu je dlouhá ~3.6 AK => pokud např. každou 4. AK vybavíme hydrofobicitou, budeme tvořit válec, který bude z jedné strany hydrofobní
        - a  když máme dva takové, tak bude docházet k hydrofobním interakcím, přilnou k sobě
    - uprostřed struktury není místo, nevejde se tam molekula rozpoštědla
    - stabilita záleží na řetězcích R (např. dva kladně nabité R vedle sebe by mohly snižovat stabilitu helixu)
}

AK tedy můžeme rozdělit dle dalšího kritéria, ◊em{kompatibility s helikální strukturou} --- dá se změřit např. tak, že z helixu odebíráme jednu AK po druhé a vždy změříme jeho stabilitu. Díky toho lze poté z (části) primární struktury proteinu predikovat, zda zaujme tvar helixu, či nikoli.

Podobně se dají predikovat i jiné sekundární struktury, například levotočivý ◊strong{polyprolinový II helix}, který se nachází v kolagenu a obecně všude tam, kde je mnoho Pro.

◊ls[#:t "Beta list"]{
    - R míří nad a pod řetězec, můžeme opět tvořit strukturu s různými vlastnostmi na dvou stranách
    - většinou max 6 AK na 6 AK, někdy ale i větší (např. beta-keratiny)
}

◊ls[#:t "Supersekundární motivy"]{
    - beta-alfa-beta
    - beta vlásenka
    - alfa-alfa
    - motiv řeckého klíče
}

◊img["motifs.jpg" #:w 300]{Strukturní motivy na proteinech}

Kombinace sekundárních a supersekundárních struktur tvoří ◊strong{domény} --- útvary, které zaujmou stabilní konformaci i když jsou exprimovány odděleně od zbytku proteinu (= samostatné jednotky, co se foldu týče).

◊ls[#:t "Domény"]{
    - alfa domény
        - svazky čtyř helixů v cytochromu b562 u E. coli, lidský růstový hormon
    - beta domény
        - beta sendvič: imunoglobulinový motiv
            - dva přeložené beta-listy tvoří sendvič, stabilizace je dána tím,že vnitřní strana je hydrofobní
        - beta barel: retinol-vazebný proteinu
            - pokud budeme beta list stáčet jako papír, bude mít tendenci se zkrucovat, vytvoří soudek (beta barel)
            - může sloužit jako pór pro molekuly vody
        - kombinace řeckých klíčů: bakteriální amidáza
        - beta-listy, které dělají částečně plošné struktury
            - na okrajích listů se tvoří vazebná místa, aktivní centra
    - alfa-beta domény
        - alfa-beta barel: součást trióza-fosfát-izomerázy
            - jeden z nejstabilnějších proteinových tvarů v přírodě
}

Takovýchto struktur jsou řádově stovky (tj. relativně málo).

◊subsection{Síly udržující stabilitu proteinů}

K pro rozrušení nativní konformace proteinu dlouhého ~100 AK je třeba dodat cca ◊u{40 kJ/mol}.

◊note{
    Energie ◊u{40 kJ/mol} k rozrušení proteinu se může zdát jako málo --- energie kovalentní vazby je přeci cca ◊u{300 kJ/mol}. Struktura proteinu je ale udržována mnoha silami, a to často i protichůdnými, navzájem se oslabujícími.

    Protein musí být po splnění své funkce snadno degradovatelný, aby z jeho částí mohl být syntetizován protein nový. Pokud se tak neděje, a v těle se objeví nějaká superstabilní struktura, bývá to často příčinou onemocnění (Alzheimer, prionové choroby, atd.).
}

◊definitions{
    ◊term["Solvatace"]{
        Obalení rozpuštěné látky molekulami rozpouštědla.
    }
}

◊ls[#:t "Iontové elektrostatické interakce"]{
    - jsou sice silné, ale přispívají ke stabilitě proteinů relativně málo
    - tvorba iontového páru není provázena velkým poklesem volné energie vzhledem k solvataci
    - velmi málo iontových párů se nachází uvnitř proteinu
    - iontové páry na povrchu proteinu nejsou konzervovány v evoluci
}

◊ls[#:t "H-můstky"]{
    - přispívají ke stabilizaci proteinů jako takových relativně málo (kolem ◊${2} až ◊${8} ◊u{kJ/mol}), ale jsou významné pro sekundární struktury
    - silnější jsou můstky v hydrofobním vnitřku proteinu
    - většina vodíkových můstků se vytváří pouze mezi blízko se nacházejícími AK, jsou tedy pouze lokální
    - 68 % můstků v proteinech se vytváří mezi atomy peptidové kostry, zbylé můstky jsou většinou mezi atomy vzdálenými max 5 AK
    - neangažované můstky na koncích dodají struktuře parciální náboj, který může být dále využitý (např. k reakci s R skupinami či s okolím)
        - ve sbalené struktuře ale bývají angažované (skoro) všechny donory i akceptory
}

◊ls[#:t "S-S disulfidické můstky"]{
    - tvoří se spojením skupin cysteinu, jsou nekovalentní
    - nejsou rozhodující pro zaujetí nativní konformace, ale jsou důležité
}

◊ls[#:t "Interakce dipól--dipól"]{
    - jsou sice slabé, ale přispívají ke stabilitě proteinu významně
}

◊ls[#:t "Hydrofobní interakce"]{
    - přispívají rozhodujícím způsobem je stabilitě nativní konformace
}

Například sbalení hemoglobinu (globulární struktura) je zapříčiněno především hydrofobními interakcemi --- uvnitř sbaleného proteinu skončí AK s hydrofobními skupinami, na povrchu AK polární. Kdybychom tuto strukturu narušili nějakým činidlem (např. 8M močovina), a pak jím přestali působit, opět se sbalí do původního tvaru.

◊ls[#:t "Chaotropní ionty"]{
    - soli, které mají destabilizující vliv na hydrataci proteinu a způsobují jeho denaturaci
    - reagují s vodou méně, než molekuly vody samotné, a proto málo interferují s H-můstky
}

◊definitions{
    ◊term["Hofmeisterova lyotropní řada"]{
         Řada aniontů a kationtů, seřazená podle toho, jak velká koncentrace daného iontu je potřeba k vysrážení vaječného bílku (tedy podle snižujícího se molárního povrchového napětí).
    }
}

◊subsection{Protein folding}

◊definitions{
    ◊term["Levinthalův paradox"]{
        Pokud bychom měli protein se 100 AK, pro každý torzní úhel uvažovali pouze 3 hodnoty a každou sekundu vyzkoušeli ◊${10^{13}} různých možností, potřebovali bychom k vyzkoušení všech prostorových konfigurací našho proteinu ◊${10^{87}} sekund (což je asi ◊u{2e69}-krát více než je předpokládáné stáří vesmíru, pozn. redaktora).
    }
}

Jak se zdá z Levinthalova paradoxu, dělá to příroda nějak jinak.

◊img["free-energy-landscape.png" #:w 500]{Několik ilustrací volné energie foldujícího se proteinu}

◊ls[#:t "Protein folding teoreticky"]{
    - obr. a) popisuje představu z Levinthalova paradoxu (musíme se po ploše náhodně pohybovat, dokud nenalezneme bod N)
    - obr. b) popisuje starou a překonanou představu, že se proteiny foldují po cestě mezistavů
    - obr. d) popisuje současnou představu: proteiny hledají stav energetického minima (obrázek představuje hladinu volné energie)
}

◊ls[#:t "Protein folding v praxi"]{
    - po odstranění denaturačního činidla proteiny v řádu ms zaujmou tvar, který pak připomíná nativní konformaci
        - nastává rychlý ◊strong{hydrofobní kolaps}
    - pak následuje několik vteřin, kdy se to sesypává, stabilizuje, dochází ke drobným úpravám
    - až po desítkách vteřin či minutách dostáváme finální konformaci
    - celková struktura je podmíněná částečnými, například sekundárními, strukturami (folding probíhá hierarchicky)
        - lokální úsek má svou autonomii, nehledě na okolí se (zpravidla, s vyjímkami) poskládá do své jedné sekundární struktury
        - potažmo tedy lokální složení AK rozhoduje o vzniku vyšších struktur
}

Někdy se může protein dostat do "pasti" (je nutné překonat stav s vyšší energií, než se bude možné dostat ke globálnímu minimu) --- tu mu mohou pomoci překonat ◊strong{chaperony}.

◊ls[#:t "Proteinové struktury"]{
    - alfa-keratin je příkladem superhelixu
        - helixy se skládají do dimerů, ty do protofilament a ty do mikrofibril
            - na obrátku je ve dvojitém helixu pouze 5.1, na rozdíl od 5.4 v alfa-helixu
            - každá 4. a 6. (tj. poslední na otáčku) AK je hydrofobní a dva helixy se tak zazipují do dimeru (hydrofovními AK k sobě)
        - pružnost keratinu klesá s rostoucím množstvím příčných disulfidových vazeb mezi protofibrilami
    - fibroin je příkladem beta skládaného listu, je to složka např. hedvábí nebo pavučin
        - v β-strukturách se střídají vrstvy postranních řetězců glycinu s řetězci alaninu a serinu
    - kolagen, složka např. chrupavek, je příkladem trojitého helixu
        - každým třetím zbytkem jeho polypeptidu je glycin, obsahuje ale také relativně mnoho prolinu a hydroxyprolinu
        - vytváří strukturu podobnou lanu, která je velice pevná v tahu
        - molekuly kolagenu agregují v posunutém (střídavém) uspořádání a vytvářejí fibrily, které jsou kovalentně příčně spojeny skupinami, odvozenými od postranních řetězců histidinu a lysinu
        - prolyl-hydroxyláza vyžaduje jako kofaktor vitamin C
    - elastin, jak napovídá jeho název, má elastické vlastnosti a tvoří prostorovou síť vláken s nepravidelnou strukturou
        - jeho polypeptidová vlákna jsou spojena podobným způsobem jako u kolagenu.
}

◊subsection{Struktura a funkce globinů}

◊note{
    Přenos kyslíku je dobrý příklad, neboť je důležitý pro všechny větší organismy --- jeho rozpustnost v krvi je omezená, všechny organismy si proto musí nějak vypomáhat. To většinou dělají sloučeninami založenými na železu nebo mědi, například hemoglobinem (v savích tetramer), myoglobin (monomer).
}

◊img["hemoglobin.png" #:w 400]{Vstřebávání kyslíku v různých tlacích}

◊ls{
    - organismy žijí v různých parciálních tlacích kyslíku
        - kyslík je vázaný s různou afinitou
    - křivky (vynesené pro různé organismy) mají sigmoidní tvar (viz obrázek): daný organismus má přenašeč, který v nízkých koncentracích nebude vázat nic, a až ve vyšších všechno
        - systém je nastaven tak, že funguje v určitém rozmezí kyslíku a právě v tom jej umí vázat či uvolnit
        - tato vlastnost je dána tím, že se jedná o oligomerní molekuly, které jsou schopny spolu kooperovat
        - v jiném případě by se mohlo stát, že organismus sice bude vázat kyslík, ale nebude schopen jej v tkáních uvolňovat
}

◊definitions{
    ◊term["Saturační křivka"]{
        Na ose ◊${x} je tlak ◊chem{O2} v torrech, na ose ◊${y} je saturace ◊chem{O2} v procentech. ◊${p50} je parciální tlak, při kterém jsou přenašeče saturována z 50%.
    }

    ◊term["Hemerythrin"]{
        Obdoba hemoglobinu, je také vícepodjednotkovým komplexem. Mají ho hlavatci, ramenonožci.
    }

    ◊term["Hemocyanin"]{
         Má jej třeba ostrorep, také existuje jako oligomer.
    }

    ◊term["Myoglobin"]{
        Monomer, není tedy schopen zajistit kooperativní sigmoidní chování. Saturační křivka má tvar hyperboly (viz obrázek).
    }
}

◊img["myoglobin.jpg" #:w 200]{Saturační křivka hemoglobinu a myoglobinu}

◊subsubsection{Hemoglobin}

◊ls{
    - tetramer se dvěma alfa a dvěma beta podjednotkami, každá z nich má konjugovaný heterocyklický systém s ◊chem{Fe^2+} (HEM), hemoglobin tedy jejich prostřednictvím umí vázat 4 molekuly kyslíku
    - po vazbě kyslíku se mění kvartérní struktura
        - např. u konce molekuly jedné podjednotky vůči druhému konci jiné
        - dále se mění i díra uprostřed (oxygenací se zmenší)
        - dochází k natočení dvou podjednotek vůči ostatním
}

◊img["hemoglobin-structure.png" #:w 400]{Struktura hemoglobinu}

Ve interakci podjenotek spočívá sigmoidní chování.

◊ls{
    - podjednotky jsou nekovalentně spojené, ale přesto se významně ovlivňují
    - máme-li situaci bez kyslíku, přicházejí molekuly postupně (1., 2., 3. 4.)
    - vazba první molekuly ◊em{pozitivně ovlivní} vazbu těch dalších => když už je tam jedna, ostatní se váží snáz
}

◊img["porphyrin.png" #:w 400]{Změny ve struktuře po vazbě kyslíku}

◊ls[#:t "Změny při vazbě kyslíku"]{
    - v deoxygenovaném stavu (= ◊strong{R}, relaxed) je molekula porfyrinu deformována, není rovinná => vázaný hem je umístěn v dutině (kavitě)
        - to má za následek řadu dalších změn, ke kterým v rámci podjednotky dochází
        - mám tzv. ◊em{domovou strukturu}, kyslík se setkává s nižší afinitou, než kdyby byl hem "vystrčený"
        - je to způsobeno vazbavi u železa, které jsou bez vázaného kyslíku delší a vytvoří onu proláklinu
    - po vazbě kyslíku (= ◊strong{T}, tense) se porfyrin narovná a přes blízký histidin (◊em{proximální histidin}) přesune část pohybu i na helix F (viz obrázek), ten přesune pohyb i na zbývající podjednotky v molekule
        - struktura funguje jako mechanický převodník
        - hem se trochu vystrčí a má vyšší afinitu ke kyslíku
}

◊ls[#:t "Kontakty mezi podjednotkami"]{
    - α1 + β1: 35 AK kontaktů
    - α1 + β2: 19 AK
    - α1 + α2: vlastně žádný
    - analogicky pro α2
}

Podjetnotky α1 + β1 jsou tedy téměř nepohyblivě spojené, struktura se tedy dá vnímat jako dva dimery spíše čtyři monomery. Mezi těmito dvěma podjednotkami bude docházet k pohybům, při oxygenaci se vůči sobě otočí o 15 ◊|deg|. Také sezmění pozice tyrosinu z C helixu vůči histidinu, viz obrázek.

◊img["t-r-state.gif" #:w 300]{Stavy T a R na rozhraní podjednotek}

◊note{
    Změny stavů a posouvání molekul se dají srovnat s pohybem a vzájemným posunem dvou pěstí; vždy se posunou o jeden prst, jakýkoli mezistav bude náročné udržet.
}

Sigmoidní tvar je tedy způsoben tím, že první kyslík se váže relativně složitě (hem je zastrčený), po jeho navázání ale vnutní daná podjednotka rovnější tvar porfyrinu i ostatním podjednotkám a další kyslíky se už váží čím dál snadněji. Po nasycení hemoglobinu se saturační křivka opět vyrovná. Kdybychom měli oligomer s více než čtyřmi podjednotkami, mohl by se chovat ještě více kooperativně a mít ještě prudší křivku.

Pokud bychom oslabili nějaká spojení, získali bychom plošší křivku, oslabilo se kooperativní chování (jednotky by se tak neovlivňovaly). Pokud by se naopak posílily vazby, dlouho by se nic nevázalo, dokud by parciální tlak nevzrostl až do určité hodnoty --- první navázání kyslíku by mělo před sebou více práce; čím pevnější vazby mezi podjednotkami budou, tím se bude celek chovat kooperativněji, stylem všechno nebo nic.

◊definitions{
    ◊term["Homotropní efekt"]{
        Druh alosterického efektu, při kterém látka ovlivňuji afinitu molekuly k sobě samé (jako např. zde s kyslíkem, kdy kyslík usnadňuje vázání kyslíku). Rozděluje se na pozitivní a negativní (kyslík je příkladem toho pozitivního). Opakem by byl heterotropní efekt.
    }
}

Hemoglobin tedy umožňuje při určité koncentraci kyslík vázat a při jiné uvolňovat. Tuto jeho vlastnost je ale možné dále regulovat.

◊ls[#:t "Regulace afinity"]{
    - slouží k přizpůsobení změnám v koncentraci kyslíku v prostředí
    - dá se vypozorovat například ze saturačních křivek v 0 m.n.m. a 4500 m.n.m.
        - běžně je v kapilárách tlak as 25 torrů, v plicích (a v prostředí) 100: při 100 saturujeme, při 25 desaturujeme
        - ve 4500 m.n.m.: tlak je asi 50, pracovali bychom tedy s nižší kapacitou, musíme snížit afinitu ke kyslíku
}

◊img["o2-mountain.png" #:w 300]{Koncentrace kyslíku v různých nadmořských výškách}

O tyto změny se stará ◊strong{kyselina bisfosfoglycerová}.

◊ls[#:t "Kyselina bisfosfoglycerová"]{
    - odvoditelná z glykolýzy, v erytrocytech se jí dají tvořit různé koncentrace
    - váže se na pozitivně nabité zbytky (má fosfátové skupiny a karboxyskupiny)
    - váže se do dutiny v hemoglobinu, a váže se tam silnou vazbou, pokud je dutina dostatečně velká, aby se uplatnily všechny interakce s kyselinou –-- a to je pouze v deoxygenovaném stavu
    - 2,3-BPG po vazbě posouvá rovnováhu oxy-deoxy k deoxy stavu
    - skrze BPG tedy máme schopnost změnou koncentrace jedné látky ovlivnit afinitu pro kyslík
        - podobně i změna pH vede k posunu afinity pro kyslík (opět prostřednictvím BPG) –-- pohybujeme-li se ke kyselejšímu, snižujeme afinitu ke kyslíku
}

V souvislosti s oxy a deoxy hemoglobinem můžeme psát rovnici

◊$${
    \ce{xH+ + Hb(O2)_n <=> Hb(O2)_{n-1} H_x + O2},
}

kde se ◊${x} protonů váže na hemoglobin, který váže ◊${n} kyslíků. Zleva doprava probíhá deoxygenace, zároveň se s tím váže proton nebo dva podle parametru ◊${x} –-- vazba protonů je spřažena s vazbou kyslíku a obráceně, stejně jako pro protony to platí právě pro kyselinu BPG a i pro další látky.

◊ls[#:t "Látky modifikující afinitu ke kyslíku"]{
    - BPG
        - ta funguje těmto způsobem např. u savců, u ptáků máme jinou, všeobecně to bývají nějaké nabité sloučeniny
    - protony (potažmo pH)
        - v plicích bude vyšší pH, méně ◊chem{CO2}, méně uhličitanu, méně chloridových iontů => hemoglobin naloží hodně nákladu a putuje do kapilár
        - svalová námaha vede k okyselení a poklesu pH, což sníží afinitu pro kyslík => ve svalech se vyloží ještě více kyslíku
    - ◊chem{CO2}
        - při dýchání vzniká v tkáních, snižuje tam afinitu hemoglobinu ke kyslíku a hemoglobin tak vyloží víc kyslíku, než kdyby tam nebyl
    - ◊chem{Cl-}
        - do erytrocytů se dostává v souvislosti s rozpouštěním ◊chem{CO2}
}

Celý orchestr je zorganizován tak, aby se využila maximální transportní kapacita. Efekt ovlivnění desaturace Hb pomocí pH a ◊chem{CO2} (a teploty) se jmenuje ◊strong{Bohrův efekt}.

◊ls[#:t "Bohrův efekt"]{
    - usnadňuje transport kyslíku
    - deoxyHb je zásaditější než nasycený Hb
        - změna konformace proteinu mění bodové pK' o několik procent
    - způsoben tím, že se k imidazolu přiblíží záporný náboj, čímž stabilizujeme výskyt kladného náboje na něm (jeho protonovanou formu)
        - posouváme pK' imidazolu
        - jen přiblížením-oddálením (aspartát-imidazol, v tomto případě) měníme acidobazické vlastnosti, schopnosti vázat a uvolňovat protony v daném pH
        - disociovatelné skupiny ovlivňují okolí
            - v pH 6.5, což je pK' imidazolu, by ho byla protonována cca polovina, ale je-li tam přiblížený aspatát, tak je protonována větší část
}

Bohrův efekt je vlastně v principu analogický k působení bisosfoglycerové kyseliny, chloridových iontů a podobně.

BPG nemění strmost křivky, pouze ji celou posouvá doprava (měníme p50). Strmost křivky se mění pouze změnou proteinu samotného, protože je závislá na míře kooperativního chování. Je sice jednoduché udělat křivku méně strmou (např. denaturací), ovšem opaku je relativně složité dosáhnout.

◊subsubsection{Modely alosterie}

Popisujeme v nich chování hemoglobinu jako modelu, obdobně se budou chovat i další systémy, saturace se dá nafitovat. Dnes se již používají pokročilé postupy, zde jsou uvedené dva historické.

◊ls[#:t "Symetrický model"]{
    - vychází z představy, že hemoglobin je symetrický oligomer identických protomerů
        - každý protomer může existovat ve stavech T (tensed) a R (relaxed), které mají nízkou a vysokou afinitu ke kyslíku, respektive
        - změna stavů protomerů se děje pouze konformační změnou, a to u všech protomerů najednou (aby zůstala zachována symetrie)
    - vychází z konceptu zámku a klíče
        - vazba kyslíku je možná jen do aktivního centra s danými vlastnostmi
        - ligand je klíč, zámek je molekula (místo, kam se kyslík váže)
    - vazbou se posouvá koncentrace směrem z T do R
}

◊img["symetric-model.jpg" #:w 500]{Symetrický model}

◊ls[#:t "Sekvenční model"]{
    - používá koncept indukovaného přizpůsobení, oligomer nezachovává symetrii
    - vazba ligandu na jeden protmer vyvolá konformační změnu, která ovlivní sousední protomery
        - síla kooperativních interakcí je závislá na typu spojení podjednotek
        - na počátku jsou všechny ve stavu T
    - afinita protomeru pro vazbu ligandu se mění s množstvím ligandu navázaného v oligomeru
    - není to vše nebo nic
        - vazba ligandu vede k částečné změn, tzv. ◊em{iduced fit}
        - tento model proto více odpovídá realitě
}

◊img["sequence-model.jpg" #:w 500]{Sekvenční model}

◊title{Enzymy a enzymová kinetika}

◊definitions{
    ◊term["Enzymy"]{
        Buněčné katalyzátory, proteiny s katalytickými schopnostmi. Katalyzátory jsou látky urychlující chemické reakce, aniž by do nich přímo vstupovaly – ovlivňují reakci, ale samy se chemicky nemění.

        ◊em{Thomas R. Cech}, objevil to, čemu se dnes říká ribozymy, což jsou proteiny
    }

    ◊term["Katabolické dráhy"]{
        Metabolické dráhy, které rozkládají složité látky na jednodušší za vzniku energie. Opakem jsou dráhy ◊strong{anabolické}.
    }
}

◊ls[#:t "Historie"]{
    - Jönz Jacob Berzelius
        - jako první použil pojem enzym a vyslovil teorii, že reakce v živých organismech neprobíhají neasistovaně, že existují nějaké molekuly, které se na reakcích podílí a urychlují je
        - byl to chemik
    - L. Pasteur
        - popsal, že v buňkách je něco navíc, co způsobuje např. kvašení (pozoroval kvasinky)
        - byl to vitalista; věřil tomu, že živé organismy mají v sobě něco nehmatatelného, vis vitalis, a dokazoval to tak, že když kvasinky zabil povařením, tak už glykolýzu neprováděly
    - Eduard Büchner
        - vyvrátil kocept vis vitalis, zabil kvasinky jinak než povařením (rozdrtil je, vytvořil tím bezbuněčné lyzáty, a enzymy stále fungovaly)
    - Emil Fischer
        - pracoval na cukrech; cukry mají spoustu izomerů, které se jen mírně liší strukturou, ale přesto jen některé z nich jsou katalyzovány enzymy
        - přišel s teorií zámku a klíče, která tvrdí, že enzym má vazebné místo, které tvarově odpovídá molekule substrátu a to tak dokonale, že většina enzymů může katalyzovat jen jeden substrát
     - Maud Leonora Mentenová
        - kanadská badatelka, pracovala v Německu, věnovala se enzymové kinetice
     - James B. Sumner
        - jako první izoloval čistý enzym, ureázu
            - ureáza je protein, který rozkládá močovinu
        - dokázal, že enzymy jsou proteiny
}

◊note{James B. Sumner měl jen jednu ruku, tu druhou mu v mládí ustřelili při honu. ◊em{insert joke about single-handedly solving big enzymology problems}}

Enzymy urychlují reakce, jsou tedy nezbytné pro život --- například energie z cukru by bez nich nešla vydolovat, protože cukr se sám o sobě protě nerozloží a energii neuvolní.

◊ls[#:t "Zásadní vlastnosti enzymů"]{
    - pro reakce stačí mírnější podmínky
        - oproti anorganickým katalyzátorům, které potřebují extrémní teploty, tlaky, pH
        - většina dalších organismů žije a má teplotní optimum v normálním tlaku, neutrálním pH a teplotě 30--40◊|deg|
    - vyšší specificita reakce
        - enzymy se málokdy pletou, pracují jen se svým substrátem a to ještě k tomu velice rychle
        - např. proteosyntéza umí syntetizovat dlouhý řetězec bez chyby, naproti tomu u anorganické syntézy je pouze 30--40 AK nasyntetizováno neomylně
    - schopnost regulace
        - anorganické katalyzátory někam nasypeme a tam dělají to, čeho jsou schopny, zatímco enzymy mohou být regulovány
        - regulace rychlosti je velice důležitá pro spolupráci katabolických drah s anabolickými
}

◊section{Stavba enzymů}

◊definitions{
    ◊term["Koenzym"]{
        Neproteinová část enzymu; ne všech enzymy ji však mají.
    }

    ◊term["Apoenzym"]{
        Proteinová část enzymu.
    }
}

◊$${\text{(holo)enzym} = \text{apoenzym} + [\text{koenzym}]}

Koenzymů je celá řada.

◊ls[#:t "Koenzymy: anorganické ionty"]{
    - nabité molekuly, které se podílí na struktuře holoenzymu
    - měďnaté ionty
        - důležitým enzymem je ◊strong{cytochrom oxidáza}, je členem elektrontransportního řetězce uvnitř ◊abr[#:new "mitochondrie"]{mch}, který se stará o přenos elektronů a tvorbu ATP
        - cytochrom oxidáza je posledním enzymem této dráhy, kde se kyslík redukuje na vodu --- měďnaté ionty slouží jako akceptory elektronů, které jsou v rámci této dráhy přenášeny
    - železité ionty
        - opět cytochrom oxidáza, fungují úplně stejně jako ty měďnaté
        - hemoglobin
    - draslík
        - pyruvát kináza, důležitý enzym glykolýzy
     - hořečnaté ionty
        - většina enzymů, které pracují s ATP, obsahují hořečnaté ionty, protože jejich náboje interagují s fosfátovými skupinami ATP
    - zinek
        - alkohol dehydrogenáza, důležitý enzym sloužící k syntéze nebo k odbourávání ethanolu
        - karbonát anhydráza, enzym důležitý pro přenos oxidu uhličitého v organismu při dýchání
}

◊ls[#:t "Koenzymy: vitamíny"]{
    - větší molekuly, hlavně ze skupiny B
    - několikero druhů
        - molekuly pevně vázané na povrch enzymu
        - molekuly, které se mohou oddisociovat (fungují jako jeden ze substrátů enzymu)
}

Druhý zmíněný druh poté může sloužit k různým účelům:
◊ls{
    - mohou akceptovat nějakou funkční skupinu, pak se zase odpojit a přenést ji dále
    - podílejí se na karboxylacích (přenáší karboxylovou skupinu z jedné části enzymu na jinou, slouží jako takové pohyblivé raménko)
    - důležité jsou koenzymy flavin adenin dinukleotid (FAD), který přenáší elektrony, a nikotinamid adenin dinukleotid (NAAD), který přenáší hydridové ionty
}

◊section{Názvosloví enzymů}

Jméno enzymu vždy končí na "---áza". Kromě toho má každý enzym přidělený kód Evropskou enzymovou komisí: ◊code{ECXXXX}, kde X značí číslo a EC je zkratka pro Enzyme Commision.

První číslo je vždy v rozmezí 1--6, protože se jedná o rozdělení enzymu do jedné z následujících kategorií, podle toho, jaký druh reakce katalyzuje:
◊ls{
    # ◊strong{oxido-reduktázy}: katalyzují reakce, při kterých se přenáší redukční ekvivalenty, směr přenosu je řízen redoxním potenciálem
        - dehydrogenázy, peroxidázy, reduktázy... (biologické oxidace často probíhají jako dehydrogenace)
    # ◊strong{transferázy}: enzymy, které přenáší nějakou funkční skupinu z jedné molekuly na druhou
        - typické jsou fosfo-transferázy, které přenáší fosfátovou skupinu z ATP na nějakou jinou molekulu
            - např. v glykolýze, první glykolytický enzym přenáší fosfát na glukózu a tvoří se glukóza-6-fosfát
    # ◊strong{hydrolázy}: za adice vody štěpí nějakou molekulu na dvě
    # ◊strong{lyázy}: enzymy, které provádí syntézu molekuly ze dvou molekul
    # ◊strong{izomerázy}: provádí přestavbu nějaké molekuly
    # ◊strong{ligázy}: lepí molekuly dohromady, za současného odštěpení nějaké malé molekuly
        - např. spojování Okazakiho fragmentů
}

◊note{Enzymy katalyzující syntézy se nazívají ◊strong{sytázy} nebo ◊strong{syntetázy}. Rozdíl mezi nimi je ten, že ◊em{syntetázy} potřebují makroergní molekulu, zatímco ◊em{syntázy} ne.}

◊box["Příklad 1"]{
    Pokud máme například následující reakci:

    ◊$${\ce{ATP + glukosa -> ADP + glugosa-6-fosfat}}

    Jedná se o první reakci glykolýzy;  glukóza, která vstoupila do buňky, je fosforylována. Význam této reakce je dvojí:
    ◊ls{
        # energizace cukerné molekuly
        # strukturní změna, která zabrání tomu, aby se glukóza dostala zase ven z buňky (dostává se tam pomocí přenašeče, který je univerzální na obě strany)
    }

    Enzym by se dal nazvat ATP:glukózo fosfotransferáza (přenáší fosfát z ATP na glukózu). Pro zjednodušení by byl také možný název ◊em{glukokináza} (kinázy jsou enzymy, které něco fosforylují). A jak bychom tento enzym očíslovali?

    ◊ls{
        - ◊code{[2]}, patří mezi transferázy, tedy do druhé enzymové třídy
        - ◊code{[7]}, přenáší fosfát
        - ◊code{[1]}, ...na hydroxylovou skupinu glukózy
        - ◊code{[2]}, cílová skupina se nachází na glukóze
    }

    Jedná se tedy o protein ◊code{E.C. 2.7.1.2}. Podobný enzym, hexokináza ◊code{E.C. 2.7.1.1}, je schopen fosforylovat i jiné hexózy (proto ta jednička na konci).
}

◊box["Příklad 2"]{
    Enzym ◊code{E.C. 1.1.1.1} je

    ◊ls{
        - oxido-reduktáza
        - působí na ◊chem{CHOH} skupinu donoru
        - využívá NAAD
        - donorem ◊chem{CHOH} skupiny je ethanol
    }

    Je to tedy akoholdehydrogenáza.
}

◊section{Regulace enzymatické aktivity}

Probíhá buďto změnou kvantity samotného enzymu (musí nastat aktivace proteosyntézy toho enzymu, změna exprese apod.), nebo regulací samotného enzymu --- to je mnohem rychlejší.

◊ls[#:t "Regulace enzymu"]{
    - regulace změnou dostupnosti reaktantu
        - netýká se to přímo regulace aktivity enzymu, ale pokud nedodáme substrát, nemůže reakce běžet
        - např. glykolýza
    - alosterická regulace
        - alosterické enzymy jsou takové, jejichž aktivita je regulována navázáním molekuly, jiné, než samotný substrát
    - regulace kovalentními modifikacemi
        - např. pomocí protein-kinázy (adenylát-cykláza aktivuje protein-kinázu A a ta zase fosforyluje něco jiného)
        - opět dochází ke změnám konformace
    - regulace prostřednictvím regulačních proteinů
    - regulace proteolýzou, ovlivněním konformace, změnou lokalizace
    - regulace zastoupením izoenzymů
        - izoenzymy jsou různé proteiny se stejnou funkcí, které katalyzují stejnou reakci, i když nejsou chemicky totožné
}

◊ls[#:t "Alosterická regulace"]{
    - nejčastější typ enzymové regulace
    - existují alosterické aktivátory i inhibitory
    - např. enzym na počátku metabolické dráhy může být alostericky inhibován produktem té stejné dráhy, naopak aktivátorem může být ATP
        - časté řízení metabolické dráhy
        - produkt váže se na alosterické místo a tím snižuje aktivitu enzymu (negativní zpětná vazba)
        - je-li ho v buňce hodně (a málo produktu dráhy), tak se ATP váže na jiné alosterické místo a tvorbu produktu zrychluje
    - funguje na základě změny konformace enzymu, který má poté k substrátu jinou afinitu
}

◊ls[#:t "Regulace proteolýzou"]{
    - některé enzymy se syntetizují v buňce v ER jako tzv. preenzymy: tvoří je jedno vlákno, jeden různě poskládaný a spojený řetězec pomocí disulfidických můstků
    - tyto enzymy jsou zpočátku v inaktivním stavu, aby neškodily a neodbourávaly proteiny, které nemají
    - teprve při po procestování ER a GA jsou z nich některé úseky vyštípnuty a tím se z nich vytvoří funkční enzym
}

Příkladem regulace zastoupením izoenzymů je laktát-dehydrogenáza.

◊ls{
    - laktát-dehydrogenáza katalyzuje přeměnu pyruvátu na kyselinu mléčnou
    - běžně se to děje v lidských svalech za nedostatku kyslíku, za intenzivní námahy (=> zásobení tkáně kyslíkem není dostatečné na to, aby došlo k aerobnímu odbourávání)
    - existují dva izoenzymy laktát-dehydrogenázy, M (muscle) a H (heart)
        - jsou ze čtyř podjednotek a existuje řada forem enzymu, které se liší zastoupením M a H podjednotek
        - srdce poměrně často využívá kyselinu mléčnou jako zdroj energie, na rozdíl od kosterních svalů
        - v srdci je stálé a dokonalé zásobení kyslíkem a tam ta laktát-dehydrogenáza funguje opačným směrem: přeměňuje laktát na pyruvát
}

◊section{Jak enzymy pracují}

Budeme se pro zjednodušení bavit o ◊em{monosubstrátových} reakcích, ačkoli převážná většina reakcí v těle je disubstrátových.

◊definitions{
    ◊term["Aktivační energie"]{
        Energie, kterou musí molekula dostat, aby překonala energetickou bariéru a uvolnila energii (zreagovala).
    }
}

◊img["enzyme-curve.png" #:w 400]{Průběh Gibbsovy energie při reakci, černě bez katalyzátoru, modře s katalyzátorem}

◊ls[#:t "Funkce enzymu"]{
    - aktivní místo a substrát vytvoří komplex enzym-substrát
        - při této vazbě substrátu na aktivní místo dojde k řadě interakcí, při kterých se uvolní energie, a ta pak umožní průběh reakce
    - enzymy pomáhají překonat peak (transition state) s vysokou Gibbsovou energií
        - reálný rozdíl je mnohonásobně větší, než jde z obrázku poznat
        - pravděpodobnost katalyzované reakce je mnohonásobně vyšší
}

O tom, jak konkrétně enzym snižuje potřebnou energii se zmiňuje několik různých teorií.

◊ls[#:t "Teorie zámku a klíče"]{
    - substrát do enzymu "zapadne", jak fyzicky (tvarem), tak chemicky
    - mezi substrátem a enzymem vznikne množství nekovalentních interakcí, jako např. H-můstky, elektrostatické interakce, nepolární interakce
    - kdyby to tak ale bylo ve skutečnosti, molekula prostě do enzymu zapadne a v klidu tam zůstane --- k žádnému snižování energie by nedošlo
}

◊ls[#:t "Teorie indukovaného přizpůsobení."]{
    - vazebné místo odpovídá klíči jen přibližně a teprve při přichycení se začínají tvořit další vazby
    - vznikne napětí a dojde ke změnám konformace substrátu i enzymu
        - u toho se uvolňuje vazbená energie, takže reakce může probíhat snadněji
    - vysvětlení na modelu kovové tyčky, viz obrázek
    - tato teorie je experimetálně ověřena
}

◊img["catalytic-reaction.png"]{Srovnání teorií funkce katalýzy a jejich energetických křivek}

◊section{Enzymová kinetika}

Základní rovnice je rovnice Michaelise a Mentenové. Ti vycházeli z poznatků Victora Henryho.

◊ls[#:t "Základní rovnice enzymové kinetiky"]{
    - vychází se z toho, že molekuly substrátu a enzymu vytvoří komplex, vznikne produkt a enzym se regeneruje --- tyto reakce jsou vratné a jsou charakterizovány rychlostními konstantami
        - ◊${k_1} vznik komplexu enzym-substrát
        - ◊${k_{-1}} rozpad komplexu
        - ◊${k_2} vznik produktů a regenerovaného enzymu
}

Nechť sledujeme rovnici

◊$${\ce{E + S <=>[k_1, k_{-1}] ES ->[k_2] P + E},}

poté základní rovnice M-M rovnice vypadá následovně

◊$${v_0 = \frac{V_{max}[S]}{K_M + [S]},}

kde ◊${v_0} je počáteční rychlost reakce (v průběhu reakce se rychlost průběhu zpomaluje), ◊${V_{max}} je maximální rychlost reakce (ovlivněná koncentrací enzymu, která určuje maximální počet vazebných míst), ◊${[S]} je koncentrace substrátu a ◊${K_M} je ◊strong{Michaelisova konstanta}.

◊img["reaction-speed.png" #:w 350]{Závislost počáteční rychlosti na počáteční koncentraci substrátu}

Jak jde vidět z obrázku, ◊${K_M} je taková koncentrace substrátu, při které je počáteční rychlost rovna polovině maximální rychlosti. Enzymy se hodnotou ◊${K_M} silně odlišují, enzymy s nižší hodnotou reagují se substrátem mnohem ochotněji.

Graf můžeme linearizovat (vznikne ◊em{dvojitě reciproční graf}), aby bylo jednodušší vyčíst z něj hodnoty ◊${K_M} a ◊${V_{max}}.

◊img["double-reciprocal-plot.png" #:w 350]{Dvojitě reciproční (nebo také Lineweaver-Burk) graf}

Někdy se uvádí také ◊strong{katalytická konstanta} ◊${k_{cat}},

◊$${k_{cat} = \frac{V_{max}}{[E]_T},}

kde ◊${[E]_T} značí celkovou koncentraci enzymu. Vyjadřuje, kolik molekul substrátu je enzym za vysoké koncentrace za jednotku času schopen přeměnit.

Protože koncentrace substranu in vivo je mnohem nižší než aby mohlo být dosaženo maximální rychlosti, zavádí se ještě ◊strong{konstanta specificity}, která se počítá jako poměr ◊${k_cat} a ◊${K_M}.

◊img["k-m-k-cat.png"]{Michaelisova konstanta, katalytická konstanta a konstanta specificity pro vybrané enzymy}

◊ls[#:t "Kataláza"]{
    - odbourává v peroxisomech peroxid vodíku, mění jej na vodu a kyslík
    - má sice vysokou katalytickou konstantu, avšak také ◊${K_M} (není jen tak ochotna začít pracovat)
}

◊ls[#:t "Acetylcholinesteráza"]{
    - odbourává nervový přenašeč acetylcholin na neurosvalové ploténce
    - vychází dobře z tabulky výše, dosáhla vlastně enzymové dokonalosti (o moc lépe už to nejde)
}

◊ls[#:t "Hexokináza"]{
    - reaguje s hexózami
    - M.konstanta pro fruktózu je třicetkrát vyšší, než pro glukózu
        - když někde bude stejně glukózy a fruktózy, tak bude mnohem raději reagovat s glukózou
}

◊section{Enzymová inhibice}

Často probíhá skrze farmaka.

◊img["inhibition.png" #:w 400]{Druhy inhibice enzymů}

◊img["inhibition-curves.png"]{Dvojitě převrácené grafy při různých inhibicích}

◊subsection{Kompetitivní inhibice}

◊ls{
    - o vazebné místo soutěží substrát a inhibitor
    - inhibitor není metabolizovatelný a tak když se tam naváže, neděje se už nic
    - typickým příkladem je inhibice sukcinát-dehydrogenázy malonátem
        - sukcinát-dehydrogenáza je enzym v Krebsově cyklu
    - dalším příkladem je léčba metanolové otravy
        - zvyšuje se koncentrace ethanolu jako správného substrátu, ze kterého vzniká neškodný acetaldehyd, oproti metanolu jako špatného substrátu, ze kterého vzniká formaldehyd
    - nemění se ◊${V_{max}}, ale mění se ◊${K_M} (viz FIGURE 1)
}

◊img["succinate.png" #:w 200]{Sukcinát a malonát}

◊subsection{Akompetitivní inhibice}

◊ls{
    - vazba inhibitoru na enzym je podmíněna vazbou substrátu
    - po navázání substrátu se nějak změní struktura enzymu a vznikne nové vazebné místo, na které se naváže inhibitor
        - způsobeno změnou konformace
    - mění se jak ◊${V_{max}}, tak ◊${K_M} (viz FIGURE 2)
}

◊subsection{Smíšená inhibice}

◊ls{
    - může se stát úplně všechno, inhibitor se naváže před substrátem, po substrátu
    - mění se obě hodnoty, ale vždy se jedno zvyšuje a druhé snižuje (viz FIGURE 3)
}

◊subsection{Ireverzibilní inhibice}

Tři druhy zmíněné výše se daly "přebít" zvýšením koncentrace substrátu. Následující inhibice jsou však ◊strong{nevratné}.

◊ls[#:t "Kyselina acetylsalicilová (aspirin)"]{
    - protizánětlivá látka, proti horečnatým stavům
    - funguje na úrovni syntetické dráhy tak, že modifikuje ◊chem{OH} zbytek enzymu ◊chem{COX} a ten pak už nemůže tvořit záněty a horečky
    - horečka by měla sloužit jako obranný mechanismus proti infekci a je otázka, zda je dobré se ji snažit srazit
}

◊ls[#:t "Hnojník inkoustový"]{
    - nesmí se po něm požívat alkohol
    - obsahuje ireverzibilní inhibitor alkohol-dehydrogenázy (je v něm látka, která se jinak používá k léčbě alkoholismu), dráhu zablokuje u přeměny acetaldehydu na kyselinu octovou
    - acetaldehyd se pak hromadí v těle
}

◊section{Vliv pH na enzymy a bisubstrátové reakce}

◊ls{
    - enzymy se obecně vyznačují tím, že fungují v mírných podmínkách (pH 7.4), ale není to 100 % pravda
    - např. pepsin (a jiné žaludeční enzymy) má optimum kolem pH 2
    - známe i takové, které fungují nezávisle na pH (papain)
    - extrémy jsou však i v buňce, např. enzymy v lysosomech jsou aktivní až v pH 5 (jinak by rozložily ER i GA)
}

◊img["enzymes+ph.png" #:w 400]{Enzymatická aktivita při různých hodnotách pH}

Bisubstrátové reakce jsou v těle vůbec nejčastější.

◊img["bisubstrate-reaction.png" #:w 450]{Druhy bisubstrátových enzymatických reakcí: následné (a) a ping-pongové (b)}

◊ls[#:t "Následné reakce"]{
    - reakce, které zahrnují tvorbu ternárního komplexu
    - substráty se na enzym vážou buď v náhodném pořadí, nebo v přesně uspořádaném pořadí
    - teprve po navázání jednoho substrátu se vytvoří vazebné místo pro druhý
}

◊ls[#:t "Ping-pongové reakce"]{
    - naváže se první substrát a vznikne první produkt, v průběhu reakce dojde ke změně konformace enzymu tak, že je schopen navázat druhý substrát, vznikne druhý komplex a následně druhý produkt
    - a tak dokola
}

◊section{Makroergní molekuly}

◊box["Makroergní molekuly"]{
    ◊ls{
        - nejznámější jsou ATP a spol., ale nejsou jediné
        - obecně jejich hydrolýzou vznikne více energie než ◊u{30 kJ/mol} (případně ◊u{25 kJ/mol})
        - někdy je to sporné
            - např. glukóza se považuje za energetickou molekulu, přestože se její hydrolýzou tolik energie neuvolní
            - musí se v mnoha enzymových krocích pracovat, aby se z ní ta energie dostala
    }

    ◊img["atp.png" #:w 300]{Změna volné energie makroergní molekuly při glykolýze, potenciál přenosu fosfátové skupiny}

    Na obrázku jsou seřazeny molekuly od té s nejvyšší energií po tu s nejnižší. Nejvyšší má pyruvát, ◊u{60 kJ/mol}, zatímco např. při orthofosfátovém štěpení (ATP -> ADP) se uvolní kolem ◊u{30 kJ/mol}.

    ◊ls[#:t "Skupiny makroergních molekul"]{
        - ◊strong{enolfosfáty}
            - zde je i úplně energeticky nejbohatší molekula, fosfoenolpyruvát (objeví se při glykolýze)
        - ◊strong{thioestery}:
            - např. difosfoglycerát (také se objeví při glykolýze)
            - mohou sloužit jako koenzymy
        - ◊strong{acylfosfáty}: fosfoderiváty organických sloučenin
            - např. 1,3-bisfosfoglycerát (opět z glykolýzy)
        - ◊strong{fosfageny}: zásobní látky
            - např. fosfokreatin (◊u{43 kJ/mol}), u člověka je ve svalech jako nejrychlejší zásobárna energie
                - může vstupovat do reakce kreatin + ATP, vzniká fosfokreatin a ADP, to se děje, je-li fosfát v nadbytku; jinak se reakce otočí
        ◊strong{sloučeniny s pyrofosfátovou vazbou}: všechny nukleosid-triosfáty
            - ATP, GTP, UTP, CTP atd.
            - účastní se tvorby nukleotidů
            - mohou se štěpit různými způsoby, v buňce však probíhá pouze hydrolýza ATP na ADP a fosfát
            - pyrofosfátové štěpení je na AMP a pyrofosfát, tam je větší zisk energie
    }

    ◊ls[#:t "Acetyl koenzym A"]{
        - univerzální přenašeč acylů
        - vazba mezi ním a merkaptoskupinou, kterou má na konci, je také makroergní
    }

    ◊todo{Vylepšit kvalitu následujících obrázků (nejspíše přepsat do tabulky).}

    ◊img["macroergic-1.png"]{Makroergní molekuly (1)}

    ◊img["macroergic-2.png"]{Makroergní molekuly (2)}

    ◊subsection{ATP}

    ◊ls{
        - velice stabilní, i když má tolik energie, protože má vysokou aktivační energii hydrolýzy
        - struktura
            - adenin, báze
            - cukr, pentóza (ribóza)
            - trifosfát, tři molekuly fosfátu
            - samotné bázi se říká ◊em{adenin} a s cukrem je to ◊em{adenozin}
        - člověk vyrobí ◊u{64476 g} ATP za den (váží-li ◊u{75 kg})
    }

    ◊ls[#:t "Původ energie"]{
         - za fyziologického pH se oddělí vodíky od fosfátů, původní ◊chem{OH} skupiny nesou záporné náboje a vzniká velké odpuzování skupin --- v tom pnutí tkví ta makroergnost
        - není to vlastně v samotné vazbě, ale v uvolnění molekuly při štěpení.
    }

    ◊ls[#:t "Hydrolýza ATP"]{
        # orthofosfátové štěpení, to je to normální (na ADP a fosfát), odštěpí se ◊|gamma| fosfát
        # pyrofosfátové štěpení, oddělí se pyrofosfát (neboli také difosfát), vznikne AMP a PP (pyrofosfát)
            - při tomto štěpení se uvolní více energie, pro některé reakce v buňce nestačí těch ◊u{30.5 kJ/mol} --- u této reakce se totiž následně hned pyrofosfatázou štěpí PP na P + P, u čehož se uvolní další energie navíc
    }

    ◊img["atp-mediator.png" #:w 400]{ATP jako mediátor energie}

    ◊ls[#:t "Předávání energie"]{
        - ATP umí přebírat energii od jiných makroergních sloučenin a dále ji předávat jiným, běžným molekulám (viz obrázek výše)
        - samotné předávání probíhá ve dvou krocích (viz obrázek níže)
            # vzniká fosforylovaný meziprodukt, který je vázaný na enzym
            # dojde k navázání (zde) aminoskupiny a uvolnění fosfátu
    }

    ◊img["atp-two-step.png" #:w 400]{Předání energie ve dvou krocích}

    ◊ls[#:t "ATP na svícení"]{
        - luciferin je aktivován adenylací, využije se ATP
        - enzym luciferáza
    }

    ◊img["luciferin.png" #:w 400]{Důležité části bioluminačního cyklu světlušky}
}

◊section{Metabolismus a enzymologie}

Živé organismy jsou z termodynamického hlediska otevřené systémy v ustáleném stavu.

◊definitions{
    ◊term["Ustálený stav"]{
        Ustálený stav je flexibilním stavem s maximální možnou termodynamickou účinností. Je charakteristickým stavem pro živé systémy.
    }
}

V rámci metabolismu si ve větším detailu na několika příkladech popíšeme, k čemu na struktuře enzymu dochází. Všechny reakce jdou popsat ◊strong{reakční trajektorií}, kde se na ◊${x} vynáší průběh reakce a na ◊${y} relativní hodnota volné energie obou reaktantů (souhrn entropie a entalpie).

◊ls[#:t "Vlastnosti enzymů (oproti katalyzátorům obecně)"]{
    - přinášejí schopnost katalyzovat reakce za (pro organismus) běžných podmínek
    - jsou specifické (např. konkrétní enzym reagovat jen s jediným cukrem)
        - s několika cukry může běžet několik reakcí katalyzováných různými enzymy, které mohou být nezávisle na sobě regulovány
        - veliký počet reakcí probíhá v jediném kompartmentu či v několika málo kompartmentech (např. v ER nebo v ◊abr{mch}); současně je tam ohromě moc regulovaných reakcí, ale ty se díky specifitě vzájemně neovlivňují
        - dává vzniknout danému konkrétnímu izomeru
    - jsou regulovatelné tím, že měníme dostupnost substrátu a reaktantů
        - když se koncentrace substrátu sníží pod určitou minimální hranici, enzym už ho neuvidí, s katalýzou se přestane
    - jsou regulovatelné i "seshora" buňkou, která může dle potřeby měnit svou expresi
}

◊subsection{Princip katalýzy}

Běžné mechanismy katalýzy, avšak kombinované na jedné molekule: vedou k vysoce specifickým reakcím s vysokými výtěžky a s vysokou účinností. Je minimalizován vznik nežádoucích vedlejších produktů.

◊subsubsection{Acidobazická katalýza}

◊ls{
    - aktivnímu centru nabídneme kyselinu nebo zásadu
    - přenos protonu od Brønstedovy kyseliny nebo na Brønstedovu zásadu snižuje volnou energii přechodového komplexu
    - typicky je součástí: hydrolýzy esterů, peptidů, reakcí fosfátových skupin, tautomerizací (keto-enol)
    - např. hydrolýza RNA v rámci reakce ribonukleasy A
        - imidazolová skupina na histidinu 12 bude odjímat proton, což nakonec povede ke štěpení vazby; později se bude chovat naopak jako kyselina a odcházející skupině proton poskytne
}

◊img["acid-base-catalysis.png" #:w 400]{Acidobazická katalýza, specifická (vlevo) a obecná (vpravo)}

◊subsubsection{Kovalentní katalýza}

◊ls{
    - přechodně se tvoří vazba mezi katalyzátorem a substrátem
        # nukleofilní reakce mezi katalyzátorem a substrátem za tvorby kovalentní vazby
        # posun elektronů z reakčního centra (na substrátu) směrem k elektrofilnímu centru katalyzátoru --- tato změna usnadní změnu uspořádání reakčního centra
        # eliminace katalyzátoru (obrácení první reakce)
    - vznik kovalentní vazby umožní změnu uspořádání a průběh reakce, katalyzátor pak bude zase oddělen
    - rychlostně limitující fází katalyzované reakce je buď fáze nukleofilní, nebo elektrofilní (dle toho je pak katalytický efekt souhrnně označován)
        - dobrý kovalentní katalyzátor: vysoce nukleofilní a zároveň snadno eliminovatelný
}

Např. z reakce

◊$${\ce{AB ->[H2O] A + B},}

se po katalýze stane reakce

◊$${\ce{AB + X: -> AX + B ->[H2O] A + X: + B}.}

◊ls[#:t "Příklady"]{
    - aminoskupina Lys, thiolová Cys, karboxylová Asp, hydroxylová Ser, imidazolová His
    - koenzymy thiaminpyrofosfát a pyridoxalofosfát
}

◊subsubsection{Katalýza kovovými ionty}

◊definitons{
    ◊term["Metaloenzymy"]{
         Mají pevně vázané kovy (Fe, Cu, Zn, Mn, Co), využívají je pro vazbu a orientaci substrátu, pro oxido-redukční reakce. Polarizují substrát.
    }

    ◊term["Enzymy aktivované kovovými ionty"]{
        Volně váží kovové ionty (především ionty kovů alkalických zemin: Na, K, Mg, Ca. ) z roztoku, vyžadují je pro svoji aktivitu.
    }
}

◊ls[#:t "Participace kovových iontů"]{
    # vazbou/orientací substrátů
    # zprostředkováním oxido-redukčních reakcí
    # elektrostatickou stabilizací nebo stíněním negativních nábojů
}

◊ls[#:t "Anhydráza kyseliny uhličité"]{
    - katalyzuje vznik hydrogenuhličitanu z oxidu uhličitého (jinak by se ◊chem{CO2} hromadil v tkáních)
    - proces
        # zinek je koordinován imidazolovými skupinami v aktivním centru
            - stabilizuje a polarizuje substrát.
        # molekuly vody tvoří network elektrostatických interakcí
        # další imidazolová skupina (z His) se přiklání k molekule vody a tvoří se řetězec
        # molekula vody je polarizována
        # imidazolová skupina působí nukleofilně
            - polarizace molekuly vody umožní nukleofilní reakci ve směru substrátu
}

◊subsubsection{Elektrostatická katalýza}

◊ls{
    - eliminace vody z aktivního centra vede ke snížení dielektrické konstanty a k zesílení elektrostatických interakcí
    - uspořádání nábojů v aktivním centru konstanty stabilizuje přechodové stavy reakcí
    - distribuce nábojů kolem aktivního centra přivádí substrát do centra rychleji než by tomu bylo prostou difuzí
}

Například ◊em{hexokinázová reakce}, ve které figuruje i hořečnatý iont.

◊subsubsection{Katalýza proximitním a orientačním efektem}

◊ls{
    - stabilizace relativní orientace skupin vůči sobě a omezení jejich pohybu
    - opět např. u hexokinázové reakce
        - hydroxylová skupina glukózy atakuje elektrondeficientní na gama fosfátu ATP
        - skupina musí přistupovat ke druhé molekule reaktantu (◊|gamma|-fosfátu) tak, že je orientována ve směru osy vazby
}

◊img["hexokinase.png" #:w 300]{Katalýza části hexokinázové reakce}

◊subsubsection{Katalýza preferenční vazbou přechodového stavu}

◊ls{
    - nejvýznamnější
    - enzym váže přechodový stav s relativně vyšší afinitou než substrát nebo produkt
    - prefenční vazba přechodového stavu zvyšuje jeho koncentraci, což se odrazí ve zvýšení rychlosti reakce
        - snižuje peak ES komplexu, který se může rozpadnout na dvě strany: ES a nebo E + P (z toho se poté hůř vrací, viz obrázek)
}

◊img["intermediate-state.png" #:w 300]{Katalýza preferenční vazbou přechodového stavu: nekatalyzovaná reakce (červeně) a katalyzovaná reakce (modře)}

◊subsection{Chymotrypsin}

◊img["chymotrypsin-mechanism.png" #:w 200]{Jak probíhá proteolýza}

◊ls[#:t "Chymotrypsin"]{
    - proteináza, která je aktivní jako enzym zodpovědný za štěpení živin v trávicím traktu
    - obecný mechanismus proteolýzy je ale všudypřítomný a nepostradatelný pro život
        - procesů závislých na proteolýze je nespočet (signální, ontogenetické, atd.)
    - dochází ke štěpení peptidové vazby, peptidová vazba je substituovaná vazba mezi dvěma zbytky AK
}

◊ls[#:t "Specificita serinových proteáz"]{
    - budou si vybírat peptidové vazby jen v sousedství určitých R skupin
    - např. pro chymotrypsin musí na ◊${R_{n-1}} být nějaký velký aromatický zbytek a na ◊${R_n} nesmí být prolin
    - pro trypsin na ◊${R_{n-1}} musí být arginin nebo lysin
        - požadavek na arginin je sice dosti řídké síto, ale to přesně chceme (štěpit peptidy na mnoha místech)
        - větší specificita někde jinde v buňce by byla např. zařízena požadavky na ◊${R_{n-3}} a ◊${R_{n-2}}
}

◊subsubsection{Mechanismus serinové protolytické reakce}

◊img["chymotrypsin-reaction.png" #:w 350]{Protolytická reakce}

◊ls[#:t "Obecný popis"]{
    - přenos acylové skupiny, který bude zahrnovat tvorbu přechodového stavu (intermediátu)
    - intermediát bude ve tvaru čtyřstěnu, uhlík bude uprostřed a substituenty ve vrcholech
        - přechodový stav bude charakterizován oxy-aniontem
        - nabízí se pole pro elektrostatickou katalýzu, výskyt této molekuly budeme moci stabilizovat nabídnutím kladných částic do okolí
    - přenos bude ukončen vpravo, kdy dojde k uvolnění substituentu, tedy k rozštěpení peptidové vazby a uvolnění nového konce proteinu
}

◊img["chymotrypsin.png" #:w 400]{Struktura aktivního místa chymotrypsinu}

◊ls[#:t "Popis aktivního centra"]{
    - ◊strong{katalytická triáda}
        - Ser 195 (hydroxylová skupina), His 57 (imidazolová skupina) a Asp 102 (karboxylová skupina)
            - ◊chem{OH} skupina Ser a její nukleofilní působení začíná celý proces štěpení vazby
    - ◊strong{hydrofobní kapsa}
        - do ní se váže peptidový řetězec, z jejího tvaru plyne požadavek na velkou hydrofobní AK na pozici ◊${R_{n-1}} v substrátu
            - tato hydrofobní interakce dodá vazebnou energii pro substrát, vznik E-S komplexu
        - každá peptidáza je trošku jiná, každá bude mít trochu jiný požadavek na skupiny, které se tam mají nacházet
    - ◊strong{oxyaniontová díra}
        - uspořádání nukleofilních skupin, které by byly k dispozici pro případný oxy-aniont, který by se v jejich blízkosti vyskytl
}

◊img["chymotrypsin-reaction-2.png" #:w 550]{Chymotrypsinová reakce v detailu}

◊ls[#:t "Popis reakce"]{
    # Ser je v triádě aktivovaný, chová se jako skvělé nukleofilní činidlo (a)
        - vzájemné elektrostatické působení
        - Ser získává unikátní vlastnosti
    # dojde k nukleofilnímu ataku, tvoří se tetrahedrální přechodový stav (c)
        - současně s tím byl odejmut proton z hydroxylové skupiny serinu, čemuž napomáhá blízkost imidazolové skupiny na pozici 57
        - acidobazická katalýza, zároveň vzniká kovalentní intermediát, tedy i kovalentní katalýza, navíc se uplatňuje i proximitní a orientační efekt
    # přechodový stav se rozpadá za štěpení peptidové vazby a vzniku komplexu enzym-[část původního substrátu] (e)
        - není stabilní, je to jen metakomplex, dochází k němu pouze v okamžiku překonávání bariéry
    # vazba molekuly vody, hydrolýza peptidové vazby, podruhé dochází k tvorbě čtyřstěnového intermediátu (g)
    # intermediát se znovu rozpadá za vzniku karboxykonce uvolňovaného s enzymem (i)
}

Reakce má tedy dvě fáze, v obou dochází k nukleofilnímu působení: v tom prvním využíváme hydroxylovou skupinu serinu a dochází ke štěpení peptidové vazby, ve druhém použijeme molekulu vody, opět vzniká čtyřstěnový intermediát a pak dochází ke štěpení vazby na Ser 195 a uvolnění nového C konce.

◊ls[#:t "Experimentální zjištění"]{
    - imidazolová skupina His bude na konci reakce usnadňovat protonaci hydroxylové skupiny --- slouží tam jako takový katalyzátor, nejdříve protony sebere, pak je zase vrátí
    - intermediát je pokaždé nabitý, oxy-aniont zde musí být stabilizován
        - to se děje tím, jak je vystrčen do okolí ◊chem{NH} skupin, které jsou s ním schopny elektrostaticky interagovat
    - pomocí cílených bodových mutací (např. Asp) se dá ověřit, že je daná AK důležitá pro efektivitu enzymu
    - tvoří se nízkobariérové vodíkové můstky
        - <= Asp a His mají podobné hodnoty ◊${pK'}
}

◊subsubsection{Přirozená regulace}

◊ls{
    - také pracuje s tvarem enzymu
    - aktivní chymotrypsin vzniká z neaktivního prekurzoru (chymotrypsinogen) jeho štěpením
        # mezi zbytky 15 a 16 probíhá proteolytické štěpení, které používá příbuznou proteázu, trypsin
        # vzniká částečně aktivní chymotrypsin
            - Ser se do blízkosti triády posune až štěpením
        # chymotrypsin je autokatalyticky štěpen, vyštěpí se červené části
        # konečný produkt je pospojován do jednoho celku S-S můstky
}

Další možnosti regulace jsou např. existence neštěpitelného pseudosubstrátu, který blokuje aktivní místo, nebo nepřítomnost kofaktoru, který k činnosti enzymu nezbytný.

◊img["chymotrypsinogen.png" #:w 400]{Chymotrypsinogen}

◊box["Evoluční význam triády"]{
    Podobná triáda se za milióny let vyvinula nezávisle na sobě u mnoha enzymů --- očividně se jedná o dobrý mechanismus.
}

◊title{Sacharidy a glykolýza}

◊definitions{
    ◊term["Monosacharidy"]{
        Monosacharidy jsou aldehydové (◊strong{aldózy}) nebo ketonové deriváty polyhydroxyalkoholů s alespoň třemi uhlíky v řetězci, nelze je hydrolyzovat na jednodušší.

        Nejstabilnější jsou cyklické sacharidy, většinou mají 5 nebo 6 uhlíků.
    }

    ◊term["D a L forma"]{
        Sacharidy jsou opticky aktivní látky, monosacharidy mají jedno chirání centrum, delší řetězce pak i více (tvoří ◊${2^n} izomerů, kde ◊${n} je počet chirálních uhlíků).

        D forma je taková, kdy nejvzdálenější ◊chem{OH} skupina od chirálního uhlíku má stejnou konformaci jako D-glyceraldehyd ---  hydroxylovou skupinu má ◊strong{napravo}.
    }
}

◊img["glyceraldehyde.png" #:w 250]{Glyceraldehyd}

◊ls[#:t "Funkce cukrů"]{
    - zásobní funkce (glykogen, škrob)
    - zdroj energie
    - signální funkce (heteropolysacharidy, proteoglykany)
    - stavební funkce (celulóza, exoskelet bezobratlých)
}

◊section{Významné aldózy a ketózy}

◊img["monosacharides.JPG"]{Všechny aldózy}

◊ls[#:t "D-glukóza"]{
    - aldohexóza, hroznový cukr
    - centrální metabolit, hlavní zdroj energie napříč organismy
    - jeden z mála monosacharidů, které se vyskytují ve formě monomerů v celé řadě buněk
    - někde se můžeme setkat i s názvem dextróza (což je označení pouze pro D-formu)
}

◊img["glucose.png" #:w 100]{D-glukóza}

Dále ještě galaktóza (je součástí laktózy, sacharidu, který se vyskytuje v mléce placentálů), manóza a idóza --- poslední dvě zmíněné jsou v mezibuněčné hmotě v podobně glykosamidoglykanů. Z aldopentóz poté ribóze, která je součástí DNA a RNA.

◊img["ketoses.jpg"]{D-ketózy}

D-fruktóza (častý zdroj energie, důležitý metabolit některých drah, je v medu, v sacharóze) a D-ribulóza (účastní se metabolismu pentózo-fosfátové dráhy a zejména fotosyntézy).

◊note{
    Na názvosloví sacharidů se kromě Fischera podílel i český chemik Emil Votoček a jeho žák Vladimír Prelog; zavedl univerzální pravidla pro popis konfigurace včetně stereoizomerů.
}

◊section{Cyklické formy}

◊ls{
    - aldehydová a ketoskupina jsou reaktivní a mají tendenci reagovat s alkoholy na druhé straně molekuly
    - alkoholová + aldehydová skupina -> hemiacetál (s keto je to hemiketal)
}

◊img["a-b-glucopyranose.png" #:w 400]{◊|alpha| a ◊|beta| forma glukopyranózy}

◊ls[#:t "Názvosloví cyklických sacharidů"]{
    - "pyro" <= odvoditelné od pyranu, šestičetného cyklu
    - ◊|alpha|/◊|beta| <= na prvním uhlíku je nové chirální (tzv ◊strong{anomerní}) centrum, vznikají dva anomery
    - Haworthova projekce
    - podobně pro fruktózu (◊|alpha|/◊|beta| D-frukto◊em{furanóza})
}

Z lineární glukózy vznikají ◊|alpha|/◊|beta| formy v určitém poměru, který je typický pro každý sacharid. Po určité době nastane v roztoku rovnováha, výsledný úhel stočení světla je dán váženým průměrem obou forem. Tomuto jevu ustanovení rovnováhy se říká ◊strong{mutarotace}. Kdyby stáčely stejně a vznikaly půl na půl, tak úhel bude ve výsledku nula (◊strong{racemická směs}).

Cyklické sacharidy se vyskytují ve vaničkové a židličové konformai; židličková je ta stabilnější => častější.

◊section{Deriváty monosacharidů}

◊definitions{
    ◊term["Aldolové kyseliny"]{
        Vznikají oxidací aldehydové skupiny. Typicky nejsou v lineární podobě, jejich skupiny opět reagují s těmi alkoholovými --- probíhá ◊strong{esterifikace}, reakce kyseliny s alkoholem, vznikají ◊strong{laktony}. Nejdůležitější lakton je kyselina-L-askorbová (vitamín C).
    }

    ◊term["Alduronové kyseliny"]{
        Vznikají oxidací uhlíku na jiné skupině.
    }

    ◊term["Alditoly"]{
        Vznikají redukcí aldehydové skupiny.
    }
}

◊img["glucose-family.png"]{Rodina glukózy}

◊ls[#:t "Deoxy cukry"]{
    - mají místo hydroxyskupiny jen vodík.
    - např. ◊em{rhamnóza} a ◊em{fukóza}, složky zásobních polysacharidů nižších rostlin.
}

◊ls[#:t "Amino cukry"]{
    - ◊em{N-acetylglukosamin} (odvozen od glukózy a N-acetylu)
    - skupina je často vázaná na složku buněčných stěn bakterií a je i podjednotkou chitinu
    - ◊em{N-acetylmuramová} kyselina, složka buněčných stěn bakterií (=> mureinová stěna)
    - ◊em{N-neuraminová} neboli sialová kyselina, často se vyskytuje na glykoproteinech zvnějšku plasmatické membrány, podílí se na jejím záporném náboji
}

◊ls[#:t "Glykosidická vazba"]{
    - monosacharidy mohou reagovat s alkoholy za vzniku glykosidů
    - methylglukosid, methylalfa-gukosid a methylbeta-glukosid
    - glykosidická vazba je zodpovědná za spojovnání monosacharidových podjednotek do disacharidů, oligosacharidů, polysacharidů
}

◊section{Disacharidy}

◊definitions{
    ◊term["Redukující a neredukující disacharidy"]{
        Redukující mají volnou aldo či keto skupinu. Anomerní uhlíky --- ty z keto či aminoskupiny --- jsou jako jediné schopné redukovat a u neredukujících disacharidů jsou navzájem vázané glykosidickou vazbou.
    }
}

◊ls{
    - podjednotky jsou spojené glykosidickou vazbou
    - příklady
        - sacharóza se skládá z glukózy a fruktózy spojených ◊|alpha|-1,2 glykosidickou vazba,
        - laktóza, mléčný cukr, z glukózy a galaktózy propojených ◊|beta|-1,4 glykosidickou vazbou
        - ostatní ze dvou glukóz, různě propojených
    - způsob propojení má zásadní podíl na vlastnostech vzniklé látky
        - redukující disacharidy mají glykosidickou vazbu 1,4 nebo 1,6 (např. laktóza, maltóza)
        - neredukující disacharidy mají glykosidickou vazbu 1,1, nebo 1,2 a jsou tak obsazeny obě poloacetalové ◊chem{OH} skupiny
}

◊img["glykosidic-bond.png" #:w 400]{Glykosidická vazba}

◊note{Některé druhy placentálů, zejména ty v polárních oblastech, nemají v mléca laktózu; její úlohu zastanou tuky a bílkoviny.}

◊ls[#:t "Trehalóza"]{
    - důležitý pro odolnost organismu vůči mrazovému stresu napříč organismy od kvasinek po obratlovce
    - účastní se anabiózy
    - má kryoprotektivní účinky
    - vyskytuje se i v krvi některých bezobratlých místo glukózy
}

◊img["trehalose.png" #:w 200]{Trehalóza}

◊section{Polysacharidy}

◊definitions{
    ◊term["Homopolysacharidy a heteropolysacharidy"]{
        Homopolysacharidy se skládají ze stejných podjednotek, heteropolysacharidy z různých. Příkladem homopolysacharidu je celulóza (glukóza, ◊|beta|1->4) a chitin (N-acetyl-glukosamin, ◊|beta|1->4).
    }
}

◊img["chitin.png"]{Chitin}

◊ls[#:t "Stavební polysacharidy"]{
    - celulóza, chitin
    - pevnost těchto stavebních polysacharidů je dána jejich prostorovým uspořádáním, např. celulóza vytváří fibrily o mnoha tisících podjednotek (sousední paralelní vlákna jsou posunuta o polovinu, jako cihly na zdi)
        - maximální propojení vodíkovými můstky v rovině i nad sebou v prostoru, maximalní využití Van der Waalsových interakcí
        - ve stěnách rostlin navíc není samostatně, ale mohou tam být další látky, např. ◊em{lignin}, které dohromady tvoří kompozitní strukturu jako např. železobeton
    - tunika pláštěnců je také z celulózy
}

◊img["amylopectin.png"]{Amylóza (a), zlom/rozvětvení ve struktuře amylopektinu (nebo glykogenu) (b), struktura amylózy a amylopektinu (c)}

◊ls[#:t "Zásobní polysacharidy"]{
    - např. škrob u rostlin, glykogen u živočichů
    - škrob se vyskytuje ve 2 formách, ◊em{amylóza} a ◊em{amylopektin}
        - glukózy, ◊|alpha|-1,4
        - 20% je tvořeno amylózou jejíž helixy nejsou příliš pevné
        - 80% je tořeno amylopektinem, po cca 24--30 jednotkách se větví
            - => mnoho neredukčních konců => rychlejší odbourávání (probíhá právě od těch neredukčních konců)
            - jen jeden redukující konec
}

◊subsection{Glykosaminoglykany}

Příklad heteropolysacharidů.

◊img["glycosaminoglycanes.png"]{Glukosaminoglykany}

◊ls[#:t "Struktura"]{
    - na prvním místě je sacharid, na druhém je amino sacharid a alespoň jeden z nich obsahuje zápornou sulfátovou nebo karboxylátovou skupinu
}

◊ls[#:t "Funkce"]{
    - jsou jednou z nejdůležitějších složek mezibuněčné hmoty živočichů, složkou proteoglykanů
    - mají v mezibuněčné hmotě funkci mechanickou (působí jako tlumiče nárazů na tkáně)
        - často se jmenují podle místa výskytu, napříkald chondroitin-sulfát v chrupavce, dermatan-sulfát v dermis, keratan-sulfát v rohovině
        - hyaluronát je v celé mezibuněčné hmotě
    - jsou schopny se hydratovat či dehydratovat: umí vázat velké množství ◊chem{Na^2+}, ◊chem{K+} či ◊chem{Ca^2+} iontů a poté (de)hydratací jsou schopné až tisíckrát změnit svůj objem
    - mají i důležitou signální funkci jako růstové faktory (směrování buněk v embryonálním vývoji, při migraci buněk i v dospělém organismu)
    - jsou důležité i pro imunitní systém a nádory, jejich proliferaci
}

◊ls[#:t "Heparin"]{
    - reakce s antithrombinem, brání srážení krve
    - silně záporně nabitý, sulfatovaný, vyskytuje se vlastně jen v žírných buňkách
    - podobný je heparansulfát, ten je v endotelu a v mozku
}

Jsou součástí ◊strong{proteoglykanů}.

◊img["proteoglycanes.png"]{Proteoglykany}

◊ls[#:t "Proteoglykany"]{
    - velké komplexy proteinů a heteropolysacharidů v bezbuněčné hmotě
    - jejich struktura se označuje jako ◊strong{kartáčová} (viz obrázek)
        - páteř tvoří kyselina hyaluronová, na ní jsou vázány ◊em{Core} proteiny a na ně pak řetězce gylkosaminogylkanů
        - core protein na sobě má navázány ◊chem{N}- a ◊chem{O}- glykosylované sacharidy a řetězce glykosaminoglykanu
    - jen asi 5% proteoglykanů tvoří proteinová složka, 95 % je cukerná
}

◊img["glycoproteins.png" #:w 450]{Spojení sacharidu a proteinu v glykoproteinech}

◊ls[#:t "Glykoproteiny"]{
    - většina proteinů v těle
    - vazba přes N- a O- glykosylaci
        - N- je přes ◊chem{NH} skupinu (na Asp)
            - např. imunoglobuliny: funkce mohou ovlivňovat dobu života proteinů v oběhu, jeho aktivitu včetně katalytické aktivity, rozpoznávací funkci, jeho rozpoznávání jiným signálním proteinem, účastní se mezibuněčných interakcí atd.
        - O- je ta běžná přes ◊chem{OH} (na Ser nebo Thr)
            - kromě výše zmíněých funkcí ještě může alternovat s fosforylací, což slouží k signalizaci
            - je také zodpovědná za krevní skupiny a za rozdílnost antigenů
    - glykoproteiny na vnějšku plasmatické membrány jsou modifikovány kyselinou sialovou, která je zodpovědná za jejich záporný náboj
}

◊ls[#:t "Peptidoglykan"]{
    - sacharidy jsou důležité i pro prokaryota => peptidoglykan slouží k tomu, aby pro hostitele bylo obtížnější si jich všimnout
    - nachází se ve stěně ◊chem{G+} i ◊chem{G-} bakterií
    - v zásadě se skládá z heteropolysacharidových řetězců navzájem propojených glyciny a krátkým řetězcem AK (např. D-aminokyselinami jako D-alanin)
    - u bakterií se vyskytuje také kyselina N-acetylmuramová a N-acetylglukosamin
}

◊section{Glykolýza}

◊ls{
    - vlastní téměř všem živočichům (kromě pár bakterií)
    - zdroj energie
    - jedna z hlavních regulačních reakcí glykolýzy
        - ty bývají na začátku (zablokování tvorby meziproduků)a an konci metabolických drah (pro hromadění meziproduktů)
    - sestává se z deseti biochemických reakcí, behem kterých se glukóza mění na pyruvát
    - další procesy závisejí na prostředí
        - ◊strong{za anaerobních podmínek:}
            - dochází k procesu fermentace = kvašení (mléčné, alkoholové)
        - ◊strong{za areobnéch podmínek:}
            - dochází k aerobní oxidaci v Krebsově (cytrátovém) cyklu a následně k oxidativní fosforylaci
}

◊ls[#:t "Historie studia glykolýzy"]{
    - Pasteur se domníval, že za kvašení mohou mikroorganismy
    - později se zjistilo, že proces probíhá i s mrtvými kvasinkami (díky jejich enzymům)
    - na přelomu 19. a 20. století se zjistilo, že se glykolýzy účastní jak enzymy, tak neenzymatické látky
    - mechanismus byl ve 40. letech 20. století objasněn
}

◊ls[#:t "Glykolýza má dvě části"]{
    - ◊strong{přípravná}
        - 5 fází
        - přeměna glukózy na dvě změnitelné triózy
    - ◊strong{výkonná}
        - 5 fází
        - generování ATP (energetický zisk)
        - redukce koenzymu NADP
}

◊img["whole_glycolysis.png"]{Schéma celé glykolýzy}

◊subsection{Reakce glykolýzy}

◊subsubsection{První reakce}

◊img["first.PNG" #:w 400]{První reakce}

◊ls[#:t "Hexokináza"]{
    - nespecifický enzym (může katalyzovat celou řadu reakcí)
    - katalyzuje první reakci
    - kinázy patří mezi transferázy = enzymy přenášející fosfát
        - mění glukózu na glukózu-6-fosfát
                - tzn. přenese fosfát na hexózu
    - hexokináza fosforyluje:
        - ve většině tkáních glukózu, manózu, ...
        - ve slinivce a játrech jen glukózu = glukokináza
            - účastní se udržování hladiny glukózy v krvi
}

◊ls[#:t "Struktura hexokinázy"]{
    - 2 laloky
    - ◊strong{ glukóza nasedá na katalytické místo mezi laloky}
    - ◊strong{změna konformace katalytického místa}
        - uzavření katal. místa mezi laloky
        - mimo jiné kvůli vytěsnění vody
            - dojde ke změně elektrostatických sil, což umožní vazbu substrátu v konkrétním místě (fosfát by se jinak výrazně jednodušeji navázal na vodu)
    - ◊strong{pevné navázání glukózy do buňky}
        - bez fosforylace může procházet volně přes membránu
        - glukóza může být zpracována
}

◊ls[#:t "Glukóza-6-fosfatáza"]{
    - enzym z jaterních buněk
    - schopný defosforylace, tj. uvolnění glukózy z buněk
    - ve většině tkání není, a tak se tam musí glukóza spotřebovat
}

◊ls[#:t "Hořčíkové kationty"]{
    - kofaktorem reakcí valné většiny kináz
    - stíní náboj na kyslíkových atomech (na beta-galaktofosfátu na ATP)
    - usnadňují přenos fosfátové skupiny
}

◊subsubsection{Druhá reakce}

◊img["second.PNG" #:w 400]{Druhá reakce}

◊ls[#:t "Druhá reakce"]{
    - izomerizace glukóza-6-fosfátu na fruktóza-6-fosfát (aldosa na ketosu)
    - katalyzováná glokóza-fosfát-izomerázou
    - přípravná reakce
        - fruktóza je lépe štěpitelná
    - stereospecifická reakce
    - acidobazická reakce
        - otevření šestičetného cyklu kyselinou, zavření pětičetného bází
}

◊img["second-detail.png"]{Druhá reakce v detailu}

◊definitions{
    ◊term["Stereospecifická reakce"]{
        Reakce, jejíž stereochemický výstup je dán konfigurací výchozích látek --- dává různé stereoizomery produktů pro různé stereoizomery reaktantů, nebo s určitými stereoizomery reaktantů vůbec nereaguje.
    }
}

◊subsubsection{Třetí reakce}

◊img["third.png" #:w 400]{Třetí reakce}

◊(add-abr "F16BP" "fruktóza-1,6-bifosfát")

◊ls[#:t "Třetí reakce"]{
    - fosforylace fruktóza-6-fosfátu na fruktózu-1,6-bisfosfát (dále jen ◊em{F16BP})
    - nejdůležitější regulační reakce glykolýzy
    - katalyzována fosfofruktokinázou
        - fosforyluje fruktóza-6 fosfát
    - inhibována ATP (značí dostatek energie v buňce) a citrátem
    - stimulována AMP (značí nedostatek energie v buňce)
    - znovu dochází k uzavření aktivního místa a vytěsnění vody
    - kofaktor: hořečnaté ionty
}

◊subsubsection{Čtvrtá reakce}

◊img["fourth.png" #:w 450]{Čtvrtá reakce}

◊ls[#:t "Čtvrtá reakce"]{
    - ◊abr{F16BP} je štěpena na 2 triózy:
        - glyceraldehyd-3-fosfát
        - dihydroxyacetonfosfát
    - ◊strong{aldolázová reakce}
        - katalyzována aldolázou (Schiffova báze)
        - dochází k aldolovému štěpení
            - štěpení C-C vazeb (obtížné)
            - ◊abr{F16BP} spolu s aktivním centrem enzymu vytvářín tzv.protonovanou Schiffovu bázi, v důsledku toho se delokalizují elektrony a je busnadněno štěpení C-C vazby
    - důležitá přítomnost karbonylové skupiny na C(2) a hydroxylové skupiny na C(4)
    - dvě třídy aldoláz
        - Schiffova báze
        - zinečnaté kationty
            - některé plísně
            - využití: vývoj plísňových inhibitorů
}

◊img["fourth-detail.png"]{Čtvrtá reakce v detailu}

◊subsubsection{Pátá reakce}

◊img["fifth.PNG" #:w 400]{Pátá reakce}

◊ls[#:t "Pátá reakce"]{
    - poslední z přípravné fáze
    - reakce enzymu trióza-fosfát-izomerázy
        - schopný vzájemně izomerizovat vzniklé triózy (z minulé reakce)
        - alfa-beta barel z osmi beta-listů ukotvených osmi alfahelixu (častá struktura enzymů)
        - uvnitř soudku je katalytické centrum
        - uzavíratelný
        - dokonalý enzym
            - rychlost reakce limitována pouze rychlostí srážky enzymu a substrátu
    - acidobazická katalýza
    - vzniká endiolový meziprodukt
    - funguje v obou směrech
}

◊subsubsection{Šestá reakce}

◊img["sixth.png" #:w 450]{Šestá reakce}

◊ls[#:t "Šestá reakce"]{
    - katalýza glyceraldehyd-3-fosfátdehydrogenázy
    - dochází k uskladnění chemické energie, která je využitelná pro další reakce a tvorbu ATP
}

◊img["fifth-detail.png"]{Šestá reakce v detailu}

◊ls[#:t "Průběh"]{
    # glyceraldehyd-3-fosfát interaguje s ◊chem{SH} skupinou v aktivním centru enzymu a vzniká thiohemiacetál
    # oxidace thiohemiacetálu pomocí oxidovaného koenzymu ◊chem{NAD+} na acylthioester (karboxylová kyselinu)
    # uvolňuje se energie, s její pomocí dojde k zabudování anorganického fosfátu z prostředí do glyceraldehyd-3-fosfátu za vzniku 1,3-bisfosfoglycerové kyseliny
    # tato energie bude využita v následující reakci k tvorbě ATP
}

Glyceraldehyd-3-fosfátdehydrogenáza se tak vyskytuje na všech možných místech, kde je potřeba energie, např. ve spermiích.

◊subsubsection{Sedmá reakce}

◊img["seventh.png" #:w 500]{Sedmá reakce}

◊ls[#:t "Sedmá reakce"]{
    - katalyzována fosfoglycerátkinázou
        - mění 1,3-bisfosfoglycerát na 3-fosfoglycerát
        - tvorba ATP
    - kofaktorem jsou hořčíkové kationty
    - k tvorbě ATP je zde využit anorganický fosfát zabudovaný v šesté reakci
    - v této reakci vzniká jedna molekula ATP na dvě molekuly glyceraldehyd-3-fosfátu, ale z původní molekuly glukózy jsou to 2 molekuly ATP (z jedné glukózy se získají dvě triózy)
    - odbočka: vznik 2,3-bisfosfoglycerátu
        - molekula snižující afinitu hemoglobinu pro kyslík
        - důsledek:
            - mutace v hexokináze:
                - bude vznikat méně 2,3-bisfosfoglycerátu
                - větší afinita ke kyslíku,
            - defekt v pyruvát-kináze
                - bude se hromadit 1,3-bisfosfoglycerát
                - nižší afinita ke kyslíku
}


◊subsubsection{Osmá reakce}

◊img["eighth.PNG" #:w 400]{Osmá reakce}

◊ls[#:t "Osmá reakce"]{
    - přípravná reakce (ale ne v přípravné fázy glykolýzy)
    - katalyzována fosfoglycerátmutázou
    - přeměnu 3-fosfoglycerátu na 2-fosfoglycerát
    - přes meziprodukt 2,3-bisfosforlycerát
    - v katalytickém centru AK je histidin, který předává fosfát na druhý uhlík a následně je prohodí
}

◊img["eigth-detail.png" #:w 400]{Osmá reakce v detailu}

◊subsubsection{Devátá reakce}

◊img["ninth.PNG" #:w 400]{Devátá reakce}

◊ls[#:t "Devátá reakce"]{
    - ◊strong{enolázová reakce}
    - katalyzována enolázou
    - 2-fosfoglycerát se mění na fosfoenolpyruvát
    - dehydrogenace
        - v první fázi dojde k odštěpení vodíkového protonu
        - v druhé fázi k odštěpení hydroxylové skupiny
    - vzniká makroergní sloučenina fosfoenolpyruvát
        - ta bude v poslední reakci opět využita ke tvorbě ATP
}

◊subsubsection{Desátá reakce}

◊img["tenth.png" #:w 450]{Desátá reakce}

◊ls[#:t "Desátá reakce"]{
    - katalyzuje pyruvátkináza
    - kofaktory: Mg a K kationt (stabilizace meziproduktu)
    - tvorba ATP za využití energie z fosfoenolpyruvátu vzniklém v předchozím kroku
    - Fosfoenolpyruvát -> enolpyruvát -> pyruvát
        - enolpyruvát tutomerizován na pyruvát
            - vysoká změna energie, ta je využita k syntéze ATP
    - na jednu molekulu glukózy další 2 molekuly ATP
}

◊subsection{Zpracování pyruvátu za anaerobních podmínek}

◊img["all.PNG" #:w 400]{Kam se ubírá pyruvát poté, co vznikne v glykolýze}

◊ls{
    - po glykolýze v anaerobních podmínkách dochází k fermentaci
    - jejím hlavním účelem je reoxidace koenzymu ◊chem{NADP} na ◊chem{NAD+}
        - ◊chem{NAD+} je potřeba pro glyceraldehyd-3-fosfát dehydrogenázovou reakci
}

◊img["lactate-fermentation.png" #:w 400]{Laktátové kvašení}

◊ls[#:t "Laktátové kvašení"]{
    - pyruvát se mění na laktát
    - dochází k reoxidaci ◊chem{NADP}
}

◊img["ethanol-fermentation.png" #:w 400]{Alkoholové kvašení}

◊ls[#:t "Alkoholové kvašení"]{
    - má dva kroky (viz obrázek), prochází před meziprodukt acetaldehyd
    - důležitým kofaktorem té první reakce je thiaminpyrofosfát,
        - obecně se účastní dekarboxylací v buňce (např. dekarboxylací AK, proto thiamin patří mezi vitamíny řady B)
    - při druhé reakci dochází k reoxidaci, jako kofaktor zde slouží zinek
}


◊subsection{Regulace glykolýzy}

◊ls[#:t "Úrovně regulace"]{
    - lokální a globální
        - pomocí hormonů
    - geneticky
        - ovlivněním exprese
    - alostericky
        - pomocí alosterických inhibitorů a aktivátorů
    - posttranslačními modifikacemi
        - fosforylací
}

Většina glykolytických enzymů navíc potřebuje kofaktory (u všech kináz jsou to ionty Mg).

◊img["PFK_graph.PNG" #:w 300]{Vliv koncentrace ATP na funkci PFK}

◊ls[#:t "Příklady"]{
    - do glykolýzy mohou vstupovat i jiné substráty, než glukóza
        - například fruktóza-6-fosfát ve svalových a jaterních buňkách
            - hexokináza ve svalech schopná fosforylovat jak glukózu, tak fruktózu
            - v jaterních buňkách není, jsou tam specifické enzymy fosfoglukokináza a fosfofruktokináza
        - galaktósa-1-fosfát -> glukóza-6-fosfát
        - manóza -> manóza-6-fosfát -> fruktóza-6-fosfát
}

◊box["Signální funkce glykolýzy"]{
    ◊ls{
        - glykolitické enzymy mají i signální funkce
            - hexokináza
                - regulace transkripce
            - glyceraldehyd
                - vazba ◊chem{NAD+}
                - replikace
                - transkripce
        - nádorové buňky používají glykolýzu i za anaerobních podmínek, čímž tvoří kyselé vnější prostředí
    }
}

◊section{Cyklus kyseliny citronové}

◊ls{
    - má mnoho jmen
        - cyklus kyseliny citronové (CKC)
            - tak jej nazval objevitel
        - cyklus trikarboxylových kyselin
            - kyselina citrónová byla zpochybněna jako intermediát cyklu
            - vědělo se ale, že tam je nějaká trikarboxylová kyselina
        - Krebsův cyklus
            - podle objevitele (pozn. redaktora viz níže)
}

◊meta{Der Krebs je německy cancer. Go figure.}

◊img["metabolic-map.png" #:w 500]{Metabolická mapa, tečky jsou intermediáty enzymatických reakcí, čárky jsou přímo reakce}

◊ls[#:t "Popis obrázku"]{
    - tlustou svislou čarou je vyznačena glykolýza, končí na ◊strong{pyruvátu} (kyselině pyrohroznové)
    - pyruvát vstupuje do velkého množství reakcí, např. mléčného kvašení, lakteátdehydrogenázové reakce a alkoholového kvašení, většinou však přes další molekulu vstupuje právě do CKC
}

Na pyruvátu a dalších molekulách se dá demonstrovat vlastnost katabolismu, který využívá energeticky bohaté sloučeniny z potravy na ATP a zisk buněčné energie.

◊ls[#:t "Energeticky bohaté molekuly"]{
    - proteiny, lipidy, sacharidy
    - získáváme je zvenčí, v organismu jsou poté degradovány --- všechny tyto vysoce rozdílné molekuly se v rámci katabolismu sjednotí a setkají se v jedné univerzální molekule, acetyl koenzymu A
    - získáváme je zvenčí, v organismu jsou poté degradovány --- všechny tyto vysoce rozdílné molekuly se v rámci katabolismu sjednotí a setkají se v jedné univerzální molekule, ◊strong{acetyl koenzymu A} (acetyl-CoA)
        - acetyl-CoA je univerzální přenašeč acylových skupin (◊chem{COOH} po odtržení ◊chem{OH})
        - acetyl-CoA je také přenašeč acetylové skupiny (◊chem{CH3CO})
}

◊note{
    Jak KC vznikl? Dráha (někdy neúplná) probíhá v některých bakteriích, část i obráceně (slouží k redukci).

    ◊img["kc-bacteria.png" #:w 400]{Neúplný KC v anaerobních bakteriích}

     Celá dráha kromě zpracování acetyl-CoA a uvolnění NADH tvoří také různé intermediáty, které jsou užitečné pro syntézy.
}

Některé AK se na acetyl-CoA nemění; vždy ale dochází k oxidaci (přenos elektronů), což zařizuje ◊strong{glyceraldehydfosfát-dehydrogenáza}. Vzniká NADH, který je poté někdy použit v ◊abr{mch} na syntézu ATP v rámci elektrontransportního řetězce.

◊img["oxidation-pathway.png" #:w 400]{Pohled na metabolismus cukrů, tuků a bílkovin}

◊ls[#:t "Tři fáze katabolismu v metabolických drahách"]{
    # konvergující dráhy vedoucí k acetyl-CoA
        - glykolýza, beta-oxidace mastných kyselin, rozštěpení na dvě triózy
    # Krebsův cyklus
    # oxidativní fosforylace
}

◊box["Konvergující dráhy"]{
    ◊ls{
        - z různých látek vznikne jen několik produktů
        - energetické molekuly směřují k acetyl-CoA
        - pak je cyklus trikarboxylových kyselin, z nich se tvoří molekula GTP (nebo ATP), dvě molekuly ◊chem{CO2} a redukované koenzymy
            - na jednu molekulu glukózy vznikají redukované koenzymy na šesti místech a všechny nesou vysokoenergetické elektrony, které odejmuli při oxidačních reakcích
            - energie může být využita k syntéze ATP oxidací těchto koenzymů
    }

    ◊img["converging-pathways.png"]{Aerobní katabolismus, příklady konvergentních, cyklických i divergentních metabolických drah}
}

◊ls[#:t "Cyklus zjednodušeně"]{
    # vstupuje dvojuhlíkatý (C2) acetyl-CoA a s C4 oxalacetátem tvoří C6
    # ta je ve sledu sedmi reakcí dvakrát dekarboxylována, uvolní se dvě molekuly ◊chem{CO2} (co je většina toho ◊chem{CO2}, který vydechujeme)
    # dva uhlíky se uvolní během cyklického pochodu
    # další uvolňované molekuly jsou čtyři redukované koenzymy
    # jako bonus vzniká jedna molekula makroergního fosfátu (např. GTP, ale to záleží na organismu)
}

◊img["mini-krebs.png" #:w 300]{Krebsův cyklus, základní schéma}

◊box["O lokalizaci CKC"]{Krebsův cykus je lokalizován v ◊abr{mch}, glykolýza byla v cytoplasmě, pyruvát po pyruvát-kinázovou reakci je ještě v cytoplasmě. Pyruvát pak přejde dovnitř ◊abr{mch}, kde už je zbytek reakcí.}

◊note{H. Krebs na cyklus neobjevil sám, pracovali na tom i jiní; postupně objevovali jednotlivé molekuly, určovali pořadí, používali inhibitory, koukali, co se kde hromadí. Pracovali se na preparátu rozemletého prsního svalu holuba, protože je to hodně aerobně aktivní tkáň, a cyklus je zde také velmi aktivní. Když ale sval rozemleli, rozemleli s ním i ◊abr{mch}. Krebs objevenou lineární dráhu uzavřel do cyklu, to je jeho přínos.}

◊subsection{Komplex pyruvát dehydrogenázy (PDC)}

Stará se přeměnu pyruvátu, který je výstupem glykolýzy, na acetyl-CoA, který potřebujeme v KC.

◊img["acoa.png" #:w 400]{Vznik acetyl-CoA, pyruvát dehydrogenázová reakce}

◊ls[#:t "O reakci"]{
    - oxidativní dekarboxyklace, ztratí se jeden ◊chem{CO2} a dva elektrony
    - průběh reakce není tak jednoduchý jak by napovídal obrázek, pyruvát-dehydrogenázový enzym je komplex enzymů E1, E2, E3 a pěti koenzymů
    - změna volné energie je silně záporná, acetyl-CoA je tedy makroergní sloučenina
}

◊subsubsection{Struktura}

◊todo{Předělat následující do tabulky.}

◊ls[#:t "Přehled enzymů a koenzymů"]{
    - E1 katalyzuje oxidativní dekarboxylaci pyruvátu
        - pevně váže koenzym TPP (thiamin pyrofosfát)
    - E2 (dihydrolipoyl-transacetyláza) katalyzuje přenos acetlyové skupiny vzniklé v první reakci na acetyl-CoA
        - pevně váže koenzym kyselinu lipoovou, která je vázána na amidovou skupinu (proto se jmenuje lipoamid)
        - volně váže CoA, který pro E2 funguje jako substrát
    - E3 (dihydrolipoyl-dehydrogenáza) regeneruje oxidovanou formu lipoamidu
        - pevně váže koenzym FAD (flavin-adenin-dinukleotid), na který jdou elektrony
        - volně váže koenzym ◊chem{NAD+} (nicotinamid adenin dinukleotid), který pro E3 funguje jako substrát
    - v komplexu se u E. coli objevuje 24 krát E1, 24 krát E2 a 12 krát E3, celý komplex má ◊u{4500 Da}
}

Přiblížíme si ty pevně vázané a jeden z těch volných.

◊img["tpp.png" #:w 300]{Thyamin-pyrofosfát, TPP}

◊ls[#:t "Thyamin-pyrofosfát"]{
    - ze dvou cyklických částí, je tam pyrofosfátová skupina
    - vyskytuje se v celé řadě enzymů, kde se přenáší nějaké skupiny, zde přenáčí acetylovou
    - jeho zdrojem je vitamín thiamin
        - tělo jej neumí samo syntetizovat, nedostatek vede k nemoci beri-beri
}

◊img["lipoamide.png" #:w 300]{Lipoamid}

◊ls[#:t "Liopamid"]{
    - skládá se z vlastní kyseliny lipoové
    - kyselina lipoová může být oxidovaná či redukovaná, protože síra může nést redukující ekvivalenty
    - je možná ještě třetí forma --- síra může nést acetylovou skupinu
    - funguje jako přenašeč, je připojený na molekulu lysinu
        - Lys je dlouhý, kys. lipoová také => spolu tvoří dlouhé rameno, které se může pohybovat se mezi dvěma aktivními místy dvou enzymů
        - rameno může v jedné pozici převzít redukční ekvivalenty a acetylovou skupinu, přehoupnout se jinam a tam náklad odevzdat a redukovat se
        - někdy se tomu říká lipoyl-lysin
}

◊note{Na síru jsme narazili i u Cys. Ten umí dělat disulfidické můstky, které jsou důležité např. při tvorbě terciální struktury proteinu (např. u inzulinu).}

◊img["coa.png"]{Koenzym A}

◊ls[#:t "Koenzym A"]{
    - poměrně veliká molekula, má motiv společný pro mnoho biomolekul
    - obsahuje adenin, ribózu, pyrofosfát
        - vypadá jako NAD nebo ADP ale je tam ribóza fosforylovaná na C3
    - merkapto-ethylamin může tvořit vazbu s acetylovými skupinami (např. v acetyl-CoA)
}

A dále ještě NAD(H).

◊img["nad.png"]{NAD(H) a NADP(H)}

◊ls[#:t "Celková struktura"]{
    - u E. coli (a dalších prokaryot a ◊chem{G+} bakterií) je organizován do dvou pomyslných krychlí
        - na vnitřní jsou E2 (8 vrcholů, na každém jsou tři E2, celkem 24)
        - na vnější jsou E1 (2 na 12 hranách, tj. 24) a E3 (2 na 6 stěnách, tj. 12)
        - dohromady máme 60 podjednotek tvořících PDC
    - u lidí a ◊chem{G-} bakterií je to složitější, PDC je organizován do dvou vnořených dvanáctistěnů
        - jeden vevnitř (20 krát E2), jeden vně (30 krát E1 tetramer na každé hraně, 12 krát E3 dimer na každé stěně)
        - celkem 204 podjednotek, ◊u{10 MDa}
        - tento komplex je v ◊abr{mch} matrix a všechny proteiny jsou kódovány v jádře => musí se tam nějak dostat a pak se poskládat do dvanáctistěnu
            - genetické vady ve struktuře/transportu/poskládání jsou letální
}

◊img["pdc-cubes.jpg" #:w 400]{Celková struktura PDC u E. coli: (a) je vnitřní krychle s 24 E2, (b) je vnější krychle s 24 E1 (oranžová) a 12 E3 (červená), (c) je (a) + (b)}

◊subsubsection{Funkce}

◊img["pdc-function.png"]{Oxidativní dekarboxylace pyruvátu na acetyl-CoA PDH komplexem}

◊ls[#:t "Popis reakce (také viz obrázek)"]{
    # pyruvát se dekarboxyluje, vzniká acetylová skupina vázající se na TPP
    # na lipoamid je přenesena acetylová skupina a je redukována jedna sirná skupina na kyselině lipoové
    # acetylová skupina je přenesena na CoA a redukuje se i druhá síra na lipoamidu
        - produkty již vznikly, je už jen potřeba vrátit enzym do původního stavu
    # ◊chem{FAD} se redukuje na ◊chem{FADH2}, síry na E2 jsou nyní opět oxidovány
        - vodíky mu dopraví raménko z E2
    # ◊chem{FADH2} předá vodíky ◊chem{NAD+} (-> ◊chem{NADH + H+}), E3 je nyní v původním stavu
        - ◊chem{NADH + H+} předá protony do elektron-transportního řetězce na membráně, kam se k enzymu pevně připoutaný FAD nedostane
}

◊img["pdc-regulation.png" #:w 350]{Regulace PDC}

◊ls[#:t "Principy regulace"]{
    - kromě alosterické regulace je komplex regulován i kovalentními modifikacemi, fosforylací a defosforylací
        - jsou na ní Ser či Thr skupiny, kam se může fosfátová skupina vázat
        - kináza-pyruvátdehydrogenáza a fosfatázy, které ten fosfát zase odštěpí
    - regulace závisí na koncentraci produktuů a reaktantů
        - když je nadbytek acetyl-CoA nebo NADH, čili jednoho z produktů, tak je kináza aktivní a PDC brzdí
        - když je moc pyruvátu či ADP, tak se kináza inaktivuje a celé se to zrychlí
        - kináza je ke komplexu připojena stále
        - fosfatáza je aktivována hlavně vápníkem (důležitý ◊em{druhý posel}), připojuje se ke komplexu jen dočasně
}

◊ls[#:t "Inhibice"]{
    - arsen se váže na thiolové skupiny lipoátu, zamezí tím navázání acetylové skupiny a přenos acetátu z prvního enzymu na koenzym A
        - tzv. ◊strong{chelatují} (obsadí) enzym
    - využití arsenu
        - jedy
        - za války se používal lewisit (sloučenina arsenu), Britové používali british antilewisid
            - antilewisid se navázal na lewisid a sloučenina se vyloučila v moči
        - léčba (např. syfilis), preantibiotikum
            - někteří parazitičtí prvoci (trypanosomy, plasmodia a další,) mají PDC citlivější než my, když se vytitruje správná koncentrace, nás to nezabije, ale je ano
    - příklady otravy: Napoleon, kloboučník z Alenky (proto byl šílený), původní fotografové
}

◊sidenote{
    Odkazy na
    ◊ls{
        # ◊link["#První reakce"]{první reakci}
        # ◊link["#Druhá reakce"]{druhou reakci}
        # ◊link["#Třetí reakce"]{třetí reakci}
        # ◊link["#Čtvrtá reakce"]{čtvrtou reakci}
        # ◊link["#Pátá reakce"]{pátou reakci}
        # ◊link["#Šestá reakce"]{šestou reakci}
        # ◊link["#Sedmá reakce"]{sedmou reakci}
        # ◊link["#Osmá reakce"]{osmou reakci}
    }
}
◊subsection{Reakce KC}

◊img["krebs.png"]{Krebsův cyklus v detailu}

Hlavní průběh (produkty, enzymy, atp.) viz obrázek. Následují pouze poznámky k jednotlivým fázím.

◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{První reakce}

◊img["first-reaction.png" #:w 400]{První reakce (citrát-syntázová)}

◊ls[#:t "První reakce (citrát-syntázová)"]{
    - exergonická
    - typický příklad uspořádané enzymatické reakce: nejprve se naváže oxalacetát a až pak se může navázat acetyl-CoA
    - syntáza (ne syntetáza) => nepotřebuje makroergní molekulu

}

◊img["citrate-synthase.png" #:w 300]{Struktura citrát-syntázy}

◊box["Prochiralita citrátu"]{
    ◊definitions{
        ◊term["Prochirální molekuly"]{
            Organické molekuly, které ač nejsou chirální, mají potenciál reagovat asymetricky, pokud se výžou na asymetrická vazebná místa.
        }
    }

    ◊img["prochiral.png"]{Prochirálnost citrátu}

    ◊ls[#:t "Citrát"]{
        - viz obrázek
        - citrát je symetrická molekula
            - má dvě stejné ◊chem{COO-} skupiny, ze kterých se uhlíky po reakci objeví na dvou různých místech v ◊|alpha|-ketoglutarátu
            - dalo by se čekat, že oba uhlíky z citrátu skončí na obou místech v molekule se stejnou pravděpodobností (symetricky)
        - po pokusech s označenými izotopy uhlíku se ale ukázalo, že jeden uhlík vždy skončí na tom prvním a druhý vždy na tom druhém místě
            - z toho se vyvodilo, že ať už se na ◊|alpha|-ketoglutarát mění cokoli, nic symetrického to není --- tedy určitě ne citrát
                - proto se měnil název cyklu
        - nakonec se zjistilo, že je to opravdu citrát, ale že se chová prochirálně --- na enzymu jsou tři vazebná místa, na která se citrát musí přesně strefit, a to jde pouze jedním způsobem => citrát reaguje ◊strong{asymetricky}, přestože je symetrický => konkrétní uhlík vždy skončí na stejném místě
    }
}

◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{Druhá reakce}

◊img["second-reaction.png" #:w 500]{Druhá reakce}

◊ls[#:t "Druhá reakce"]{
    - přeměnu sekundárního alkoholu na terciální (přenos hydroxylové skupiny z jednoho uhlíku na druhý)
    - molekula izocitrátu je totiž snadněji oxidovatelná (dekarboxylovatelná), než molekula samotného citrátu
}

◊ls[#:t "Inhibitor druhé reakce"]{
    - tzv. ◊em{sebevražedný substrát}
    -  látka sama o sobě inhibující není, až po vstupu do metabolismu se stane jedovatou a inhibuje
    - např. některé rostliny jako obranu proti nepřátelům tvoří fluoro-acetát
        - fluoro-acetát -> fluoro-acetyl-CoA -> fluoro-citrát -> ireversibilní inhibice akonitázy
}

◊img["aconitase.png" #:w 200]{Akonitáza}

◊ls[#:t "Akonitáza"]{
    - má železosirné jádro
    - síra je tam dvojího typu
        - organická (v cysteinu), váže se na tři atomy Fe
        - anorganická, koordinuje celý komplex
    - kromě tří cysteinem vázaných Fe je tam jeden atom nevázaný, ten interaguje s karboxylovou skupinou citrátu a s vodou --- tam běží přeměna
}

◊ls[#:t "Cis-akonitáza"]{
    - nalzena i v cytoplazmě
    - akonitáza v cytoplasmě slouží jako regulátor hladiny železa v cytoplasmě
        - velká koncentrace Fe -> uvolňování radikálů
    - když je Fe hodně, v akonitáze se ukládají 4 atomy
    - když je Fe málo, tak se železosirný komplex uvolní a místo vazebného místa pro Fe vznikne vazebné místo pro vlásenku mRNA
    - podle toho, o jaké mRNA se jedná, se mění i regulační funkce akonitázy
        - mRNA ◊strong{feritinu}
            - feritin je protein, který zabaluje Fe do zásobních balíků
            - když se na mRNA naváže akonitáza, zastaví se translace feritinu
        - mRNA ◊strong{transferinu}
            - transferin nosí železo z okolí buňky dovnitř buňky
            - mRNA je akonitázou stabilizována, míra translace se zvýší
}

Třetí role akonitázy souvisí s nukleotidy: shluky ◊abr{mch} DNA a proteinů. V ◊abr{mch} je u člověka několik set kopií cirkulárních molekul, jeden z proteinů, který je drží u sebe, je právě akonitáza.

◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{Třetí reakce}

◊img["third-reaction.png"]{Třetí reakce}

Toto je první dekarboxylační reakce.

◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{Čtvrtá reakce}

◊img["fourth-reaction.png" #:w 400]{Čtvrtá reakce}

Sukcinyl-CoA je opět makroergní molekula.

◊img["dekarboxylation-similarity.png"]{Podobnost mechanismu oxidativní dekarboxylace}

◊ls[#:t "Podobnost alfa-ketoglutarátdehydrogenázy s PDC"]{
    - podobný mechanismus funkce (viz obrázek)
    - enzymy E1, E2, E3
    - inhibice arsenem
    - jen substráty jsou odlišné
}

◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{Pátá reakce}

◊img["fifth-reaction.png" #:w 400]{Pátá reakce}

◊ls[#:t "Pátá reakce"]{
    - katalyzováno sukcinyl-CoA syntetáza (jméno má podle reakce opačného směru)
        - spíše z historických důvodů, reakce většinou běží směrem sukcináza -> sukcinát
    - tvoří se kyselina jantarová, neboli sukcinát
    - energie vazby s CoA je využita na syntézu makroergní sloučeniny, např. GTP
}

◊img["succinyl-synthetase.png" #:w 300]{Detailní průběh páté reakce}

◊ls[#:t "Průběh páté reakce (viz obrázek)"]{
    # vznik sukcinyl-fosfátu
    # vznik sukcinátu, přenesení fosfátu na His zbytek v enzymu -> vznik makroergní formy enzymu
    # fosfát je přenesen na GDP (nebo ADP a podobně), tvoří se GTP (nebo ATP a podobně)
}

Probíhá tedy tzv. ◊strong{syntéza ATP na substrátové úrovni}, která probíhá i v glykolýze. Druhý způsob syntézy ATP je v ◊abr{mch} na základě oxidativní fosforylace.

◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{Šestá reakce}

◊img["sixth-reaction.png" #:w 400]{Šestá reakce}

◊ls[#:t "Šestá reakce"]{
    - enzym sukcinát-dehydrogenáza, koenzym FAD
        - FAD funguje zde, v reakci pyruvát -> acetyl-CoA a v oxidativní fosforylaci (jako komplex II)
    - na rozdíl od ostatních enzymů v KC je vázaný na membránu
        - je integrálním membránovým proteinem ve vnitřní ◊abr{mch} membráně => může efektivně předávat elektrony
    - (doslova) učebnicový příklad enzymu manifestujícího ◊em{kompetitivní inhibici}
        - kyselinoa malonová je stejně jako sukcinát také dikarboxylová a liší se od něj pouze v jedné skupině
        - řešením je přidat více sukcinátu
        - inhibiční vlastnosti malonátu přišly vhod při zkoumání KC
}

◊img["mal-suc.png" #:w 150]{Malonát a sukcinát}


◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{Sedmá reakce}

◊img["seventh-reaction.png" #:w 500]{Sedmá reakce}

Malát je jiným názvem ◊em{kyselina jablečná}.

◊sidenote{Zpět na ◊link["#Reakce KC"]{obrázek celého cyklu}.}
◊subsubsection{Osmá reakce}

◊img["eighth-reaction.png" #:w 400]{Osmá reakce}

Probíhá ◊strong{regenerace oxalacetátu}.

◊subsection{Regulace KC}

◊img["kc-regulation.png" #:w 450]{Regulační místa KC}

◊ls[#:t "Regulační mechanismy"]{
    - nejdůležitější jsou následující tři enzymy (jejich inhibice/aktivace)
        - citrát-syntázová reakce
        - izocitrát-dehydrogenáza
        - alfa-ktetoglutarát-dehydrogenáza
}

◊section{Intermediáty KC}

◊img["kc-products.png"]{Využití meziproduktů KC v buňce}

Citrát si musí "odskočit" do cytoplasmy, kde probíhá syntéza mastných kyselin; další itermediáty slouží k dalším syntézám. Celý cyklus má tedy ◊strong{katabolický} i ◊strong{anabolický} charakter.

◊subsubsection{Anaplerotické reakce}

◊ls{
    - někdy dojde oxalacetát, protože na různých místech utíkají intermediáty do syntéz
    - anaplerotické (= doplňující) reakce doplňují oxalacetát přes malát, viz červené šipky na obrázku
    - výchozí molekulou jsou intermediáty metabolismu cukrů (2 pyruváty, 2 fosfoenolpyruváty, poslední dvě molekuly glykolýzy, té, která běží v cytoplasmě)
}

◊img["anaplerotic-reactions.png"]{Čtyři různé anaplerotické reakce}

V poslední (reakce s jablečným enzymem) je zdrojem uhlíku místo ◊chem{CO2} bikarbonát. Reakce probíhá také při syntéze ◊chem{NADPH}, ale obráceně.

◊note{
    ◊ls[#:t "Vstup AK do KC"]{
        - přes ◊|alpha|-ketoglutarát
        - přes sukcinyl-CoA
        - Asp, Phe, Tyr přes fumarát
    }
}

◊section{Glyoxalátový cyklus}

◊img["gloxalate.png" #:w 400]{Glyoxalátový cyklus}

◊ls[#:t "Glyoxalátový cyklus"]{
    - společné rysy s KC, je to dráha zahrnující některé podobné enzymy, ale je tam o dva enzymy navíc
    - probíhá v ◊strong{glyoxysomech}, což jsou modifikované peroxisomy
        - v semenech olejnatých rostlin
}

◊box["Peroxisomy"]{
    ◊ls{
        - detoxifikační centra
            - odbourávají se tam jedy jako ethanol, léky
        - látky se oxidují, stávají se rozpustnými a mohou se vylučovat močí
        - vzniká zde peroxid vodíku
    }
}

◊ls[#:t "Průběh"]{
    # citrát syntázová rekce, vznik citrátu
    # citrát je následně izomerizován na izocitrát, jako v KC (akonitáza)
    # ◊strong{izocitrát lyáza} rozštěpí šestiuhlíkatou kyselinu na sukcinát a glyoxalát
    # glyoxalát vstupuje do ◊strong{malátsyntázové reakce}, jež z něj a z acetyl-CoA uděá malát
    # malát už zase vstupuje do klasické reakce KC (malát-dehydrogenáza)
    # a regeneruje se oxalacetát
}

◊img["glyoxalate-vs-kc.png" #:w 400]{Vztah glyoxalátového cyklu a KC}

Proč jsou glyoxysomy v semenech?

◊ls[#:t "Syntéza cukrů"]{
    - semena mají dva typy zásobních substrátů: škrob, tuky
    - olejnatá semena u klíčení potřebují cukry, protože samotné tuky nejdou pomocí KC zpracovat -> musí nasyntetizovat sacharidy z tuků
        - v KC nepřebývají žádné uhlíky, které by byly použitelné k syntéze sacharidů
        - z glyoxalátového cyklu se uvolní sukcinát, který se může účastnit KC, a později nepřímo poslouží k tvorbě glukózy (viz obrázek)
}

◊section{Oxidativní fosforylace}

Dále již jen zkráceně OF.

◊ls{
    - dvě reakce: oxidace (transport elektronů z redukovaných koenzymů) a fosforylace
    - ◊chem{ADP -> ATP}
    - reakce bez sebe nemohou být, jsou spjaty
    - probíhá v ◊abr{mch}, kde se (při dostatku kyslíku) vyrábí 96% ATP (zbytek vzniká při glykolýze a jedna molekula v KC)
    - ◊abr{mch} mají všechny aerobní organismy (potažmo všechna eukaryota, jen některá je mají pozměněné
}

◊img["of-schema.png"]{Přehed oxydativní fosforylace}

◊subsection{Mitochondrie}

◊ls[#:t "Historie objevu mitochondrií"]{
    - Otto Warburg dostal roku 1931 NC za objevy kolem ◊abr{mch}
    - ◊abr{mch} byly popsány na přelomu 19. a 20. století, poměrně brzy byla zjištěna jejich úloha v oxidativním metabolismu
    - až v 50. letech (George E. Palade) byla na Rockefelově univerzitě poprvé postavena dobrá centrifuga, která dovedla oddělovat buněčné kompartmenty
        - až tehdy se dala studovat čistá ◊abr{mch} frakce
        - Palade dostal NC v roce 1974 spolu s Christianem de Duve (který objevil peroxisomy) a Albertem Palade
}

◊subsubsection{Struktura ◊abr{mch}}

◊img["mitochondrion.png" #:w 400]{Stavba ◊abr{mch}}

◊ls[#:t "Vnější membrána"]{
    - má póry z porinů, které slouží k transportu proteinů do ◊abr{mch}
        – tedy je dost propustná
}

◊ls[#:t "Mezimembránový prostor"]{
    - reakce s metabolismem nukleotidů, např. při udržování úrovně nukleotidů (◊chem{ADP <=> ATP}) dovede měnit nukleotidy v sebe sama
    - jsou to i důležité signální molekuly ohledně energentického stavu buňky
}

◊ls[#:t "Vnitřní membrána"]{
    - nařasená kristami
        - původní představa velkých vchlípenin se ale opouští, současný názor je takový, že vchlípeniny jsou spíše tunýlky
        - tunýlky teoreticky mohou měnit průměr svého vstupu (přelomu mezi tunýlkem a mezimembránovým prostorem), čímž by se mohl tvořit v mezimembránovém prostoru nějaký gradient
    - jsou v ní zanořené komplexy OF
    - je vlastně nepropustná, neprojde přes ní nic, pro co tam není transportní systém (kromě krátkých MK a plynů)
        - ◊chem{CO2} vzniká v KC a kyslík je tam potřeba jako finální akceptor elektronů
        - neprojdou ale třeba protony, to je základ OF
}

◊ls[#:t "Semiautonomie"]{
    - ◊abr{mch} jsou ◊strong{semiautonomní}, obsahují vlastní DNA
    - ◊abr{mch} genů je u člověka 13, všechny kódují nějaký protein patřící do komplexu z OF
        - postupem času se geny přesouvaly z ◊abr{mch} do jádra
        - těch 13 proteinů zůstalo, protože jsou natolik hydrofobní, že by nemuseli přečkat cestu přes cytoplasmu
    - komplexy se většinou skládají z ◊abr{mch} i běžných proteinů, které jsou do ◊abr{mch} transportovány z cytoplasmy
        - ◊strong{mitopatie} = chyby v koordinaci skládání (celkem časté)
}


◊img["mitochondrion-fluorescent.png" #:w 200]{Buňka, fluorescenčně obarvená (červeně cytoskelet, zeleně ◊abr{mch}) --- důkaz existence ◊abr{mch} retikula}

◊ls[#:t "Celková morfologie"]{
    - původní představa: ◊abr{mch} mají na délku asi ◊u{2 \mu m}, jsou tedy velikostní podobné bakteriím
    - současná představa: ◊abr{mch} jsou spíše ◊strong{dynamickým retikulem}
        - existuje dynamická sít ◊abr{mch}, které se neustále slučují, pohybují, mění tvar
        - nejspíše ve všechn buňkách kromě svalových (tam není místo) a spermií (tam jsou ◊abr{mch} kolem bičíku)
    - v ◊abr{mch} se tvoří kyslíkové radikály => rychle stárnou, jsou rychle odstraňovány (autofagocytózou) a obnovovány
    - ke změnám ve tvaru a uspořádání ◊abr{mch} může dojít otravou, zablokováním OF, ale tvar mohou měnit i v závislosti na energetickém stavu buňky
        - potřeba vysoké produkce ATP => zvýšení objemu
        - v opačném případě fragmentace a snížení objemu
}

◊subsection{Oxidace (elektron-transportní řetězec)}

◊img["oxidation-of.png"]{Schéma elektron-transportního řetězce}

◊ls[#:t "Transport elektronů"]{
    - probíhá při redoxních reakcích (donor se oxiduje, akceptor redukuje)
    - v oxidační části je elektronový pár nesen z primárního donoru (redukovaný koenzym ◊chem{NADH} nebo ◊chem{FADH2}) přes přenašeče až na finální akceptor ◊chem{O2}
    - zjednodušený nákres ukazuje, že se řetězec skládá ze čtyř komplexů (I-IV), které jsou všechny ukotveny ve vnitřní ◊abr{mch} membráně
        - kromě těchto čtyř velikých proteinových komplexů jsou tam ještě dva mobilní přenašeče, kteří se pohybují mezi těmi velkými
            - ◊strong{koenzym Q} (1 <-> 3, 2 <-> 3)
            - ◊strong{cytochrom C} (3 <-> 4)
    - látky vstupují buď na místě I, ◊chem{NADH}, nebo na II, kde je sukcinát-dehydrogenáza s flavinovým koenzymem ◊chem{FADH2}
}

◊img["redox-potential.jpg" #:w 400]{Redoxní potenciál jednotlivých komplexů}

◊ls[#:t "Redoxní potenciál"]{
    - jedna osa ukazuje redox potenciál v milivoltech, druhá osa ukazuje volnou energii, která se při přenosu uvolní
    - nejvýše je soustava NADH-NAD
    - obecně platí, že putují elektrony ze soustavy o nízkém redox potenciálu na soustavu s vyšším potenciálem
    - zde je rozdíl více než ◊u{1 V}, a podle Nernstovy rovnice se dá spočítat, jak velká energie se při takovémto přenosu uvolní
        - více než ◊u{200 kJ/mol}, tam se vejde cca 7 molekul ATP
}

◊ls[#:t "Přepumpované protony"]{
    -  za dvě "kola": 8 (I) + 0 (II) + 8 (III) + 4 (IV) = 20, průměrně za jedno kolo tedy 10
        - to platí pouze pokud reoxidujeme ◊chem{NADH}
    - pokud reoxidujeme ◊chem{FAD}, přeskakujeme první komplex a přepumpujeme tedy jen 6 protonů
}

◊box["Produkce tepla rostlinami"]{
    ◊ls{
        - některé rostliny umí ten gradient využívat na teplo
            - obsahují alternativní oxidázy redukovaných koenzymů, které tvoří teplo díky přenosu oněch redukčních ekvivalentů
            - rostou díky tomu ve sněhu
        - jiné rostliny gradient využívají k ryhlejší emitaci pachových molekul
    }

    U lidí se energie oxidace také využívá, k netřesové termogenezi.
}

◊subsubsection{Redoxní centra}

◊ls{
    - molekuly, které umí měnit svůj oxidační stav
    - starají o to, aby byl elektron na jedné straně přijat a na druhé odevzdán
}

◊img["coenzyme-q.png"]{Koenzym Q}

◊ls[#:t "Koenzym Q"]{
    - jiné názvy: ubiquinon, ubichinon (byl nalezen všude možně po buňce, byl tedy ◊em{ubiquitous}), koenzym Q10 (viz níže)
    - pohyblivý přenašeč elektronů, běhá ve vnitřní membráně a nosí elektrony mezi komplexy
    - má dlouhý hydrofobní ocásek, celý je tedy také hydrofobní
        - proto je uvnitř membrány
        - v ocásku se desetkrát opakuje jeden motiv -> název koenzym Q10
            - jsou různé typy koenzymů od Q1 až po Q10
    - může být v ◊strong{radikálové formě} a vázat jen jeden elektron, nebo může být v plně oxidované a vázat dva
}

◊img["fe-s-complex.png" #:w 350]{
    (A) Fe + 4Cys (u bakterií), (B) 2Fe + 2S + 4Cys (sír je celkově 6), (C) 4Fe + 4S + 4Cys (sír je celkově 8)
}

◊ls[#:t "Akonitáza"]{
    - má v sobě železosirný komplex
    - účastní se reakce tak, že uvolní ◊chem{Fe^2+} a spustí Fentonovu reakci
}

◊img["heme.png"]{Tři příklady porfyrinového cyklu}

◊ls[#:t "Cytochromy"]{
    - proteiny s hemovým železem, hemem
    - tvoří se ◊strong{porfyrinový kruh} přes 4 ◊chem{N} je vázáno jedno ◊chem{Fe} (může přecházet na ◊chem{Fe^2+} a ◊chem{Fe^3+})
    - je několik typů cytochromů
        - dělí se podle toho, jaké typy hemů jsou v nich vázány --- A, B či C
        - hemy A, B a C se liší ukotvením v proteinu a postranními řetězci navázanými na porfyrinový kruh
    - ještě se tam podílí měď, ale není v žádném komplexu
    - cytochromy jsou důležité pro experimenty, různě absorbují světlo
        - CytC při třech vlnových délkách absorbuje silně
        - navíc absorbuje různě v oxidovaném a redukovaném stavu -> dobrý způsob jak měřit průběh metabolismu v organismu je sledování změny absorbance
}

◊subsubsection{Komplex I}

Jinými názvy též NADH dehydrogenáza, NADH:koenzym Q oxidoreduktáza.

◊img["complex-1.png" #:w 300]{Struktura komplexu I}

◊ls[#:t "Struktura"]{
    - má tvar L, jsou rozlišitelné dvě domény
    - transmembránový Lys, hlavička je zanořená do lumen
    - jsou na něm redoxní centra
        - na špičce je místo pro redukovaný koenzym
    - je to jedno z největších takových center, má až 45 podjednotek
        - bakteriální mají kolem 15 podjednotek, v průběhu evoluce se postupně přidávaly další a další
        - 7/45 podjednotek se kóduje v ◊abr{mch} DNA, zbytek v jádrovém DNA
}

◊ls[#:t "Funkce"]{
    # na špičku se napojí redukovaný koenzym
    # předá dva elektrony prvnímu redoxnímu centru, tím se oxiduje
    # elektrony putují po dalších centrech
        - těchto center je v komplexu 7--10
            - flavín-mononukleotid (FMN) -> série železo-sirných center s různým proteinovým prostředím
            - redoxní potenciál se postupně zvyšuje
        -v průběhu se z matrix vypumpují čtyři protony
}

◊subsubsection{Komplex II}

Jinými názvy též sukcinát-dehydrogenáza, sukcinát:koenzym Q oxidoreduktáza.

◊img["complex-II.png" #:w 300]{Struktura komplexu II}

◊ls[#:t "Struktura komplexu II"]{
    - komplex ze 4 podjednotek
        - žádná není kódována v ◊abr{mch}
    - několik redoxních center
        - tři železo-sirná centra
        - jeden FAD
}

Koenzym Q se však redukuje i jinými způsoby než přes komplexy I a II, viz obrázek níže. Jde zároveň vidět, že FAD figuruje i na jiných místech, např. v oxidaci mastných kyselin.

◊img["electrons-to-q.png" #:w 400]{Různé způsoby redukce koenzymu II}

◊subsubsection{Komplex III}

Neboli cytochrom B-C1.

◊img["complex-3.png" #:w 300]{Struktura komplexu III}

◊ls[#:t "Struktura komplexu III"]{
    - obsahuje cytochromy B a C1 (-> jméno) a kromě nich ještě obsahuje jeden Fe-S komplex, který se nazývá ◊strong{Rieskeho protein}
    - funguje jako dimer (na obrázku světlejší a tmavší odstíny barev) a každý z monomerů je asi z 10 podjednotek (dodnes to není jisté a různé organismy to mají různě)
        - pouze 1/10 je kódován v ◊abr{mch}
}

◊img["complex-III-function.png" #:w 400]{Rozdělení dvojelektronového toku v komplexu III}

◊ls[#:t "Funkce"]{
    - dochází k rozdělení dvouelektronového přenosu na jednoelektronový --- dvoufázový ◊strong{Q cyklus}, viz obrázek
    - během Q cyklu se přepumpují 4 protony (dvě fáze, ve kterých se obě H z ◊chem{QH2} vypumpuje mimo matrix)
    - pro funkci je důležité, že jsou všechna vazebná místa lokalizována na různých místech komplexu
    - pro pumpování je důležité, že je vazebné místo pro Q blízko transmembránové části (protony pak jednodušeji odletí)
}

◊subsubsection{Komplex IV}

Jiným názvy též cytochromoxidáza, cytochrom C:kyslík oxido-reduktáza, cytochrom A-A3, nebo COX.

◊img["complex-IV.png" #:w 300]{Struktura komplexu IV}

◊ls[#:t "Struktura komplexu IV"]{
    - obsahuje asi 12 podjednotek, z toho 3 jsou kódovány v ◊abr{mch}
    - funguje jako dimer, důležité komponenty jsou čtyři redoxní centra
        - všechna redox centra jsou kódována v ◊abr{mch}
    - dva cytochromy, A a A3
    - obsahuje atomy mědi, které jsou koordinovány přes Cys a His
}

◊img["complex-iv-function.png" #:w 300]{Průchod elektronů komplexem IV}

◊ls[#:t "Funkce"]{
    - dovede elektrony a protony předávat na kyslík tak, že vznikne molekula vody
        - primitivnější to nedokáží a dělají místo toho peroxid vodíku --- ten je však také radikálový a nebezpečný, katalázový systém ho musí pak tedy rozložit na vodu a kyslík, aby nedělal paseku
    - průběh
        # čtyři redukované ◊chem{H} jsou neseny přes podjednotku 2 na binukleární komplex s atomy mědi
        # poté jsou přes hemy neseny na druhou měď
        # zároveň jsou na kyslík předávány 4 elektrony a do jeho blízkosti i 4 protony
        # nakonec vzniknou dvě molekuly vody
    - při tom všem jsou přepumpovány 4 elektrony (dva páry)
}

◊box["Respirazómy"]{
    ◊ls[#:t "Respirazómy"]{
        - superkomplexy oxidační fosforylace (komplexy I--V)
        - metabolické celky -> ulehčení pohybu Q a cytochromu C, transport mezi komplexy je rychlý
        - kontroverzní, neví se, zda existují
    }

    Co se ovšem ví, je fakt, že ATP syntázy se do větších celků shlukují. Jak se zdá, jsou tyto superkomplexy zčásti zodpovědné za morfologii vnitřní membrány v ◊abr{mch} (konkrétně za kristy) --- vyskytují se totiž přesně v místech, kde kristy prudece zahýbají. Mutanti bez těchto superkomplexů mají strukturu krist silně narušenou .
}

◊subsubsection{Kyslíkové radikály (ROS)}

◊ls{
    - byly objeveny relativně nedávno a zpočátku se jim přisuzovala jen negativní úloha
        - mohou však sloužit i jako signální molekuly
– informují o hladině kyslíku,
    - na jejich existenci a produkci je založena teorie stárnutí
        - jejich produkce postupně ničí ◊abr{mch} a snižuje výkonnost buněk a produkci energie -> organismus stárne a zahyne
    - jako hlavní místo produkce ROS se uvádí koenzym Q, ale není to přesné, hlavním místem je komplex BC1, kde dochází k rozdělení přenosu elektronů
}

◊img["radicals.png" #:w 400]{Vznik a zpracování kyslíkových radikálů}

◊ls[#:t "Aktivní způsoby ničení ROS"]{
    - superoxid-dismutáza: ◊chem{O^. -> H2O2}
    - glutathion-peroxidáza: ◊chem{H2O2 -> H2O + O2}
        - nejdůležitější
        - aktivní látka glutathiol
}

◊ls[#:t "Glutathiol"]{
    - tripeptid, je tam důležitá molekula Cys
    - síra může být redukována i oxidována, umí dělat disulfidický můstek
        - jako dimer může být spojen disulfidickým můstkem a jako jedna molekula a může tuto peroxidázu pufrovat
}

◊subsection{Fosforylace}

◊img["chemiosmotic-model.png"]{Znázornění chemiosmotického modelu}

◊ls[#:t "Chemiosmotická hypotéza"]{
    - už je potvrzena
    - Peter D. Mitchell
    - tvrzení, že ATP se tvoří v ◊abr{mch} na základě protonového gradientu
        - po vytvoření gradientu během první fáze OF se poté v ◊strong{komplexu V}, častěji nazývanému ◊strong{◊abr{mch} ATP syntáza}, tvoří ATP
}

◊ls[#:t "Protonový gradient"]{
    - někdy též proton-motivní síla
    - chemická, koncentrační šložka
    - elektrická složka
        - hodnota potenciálu je asi ◊u{15 mV}
    - rozdíl napětí na membráně a rozdíl koncentrace => je tam rozdílné pH
}

◊img["of-coupling.png"]{Spřaženost obou fází OF}

Reakce jsou běžně spřažené, pouze když přidáme látku, která udělá díry v membráně a zruší tím protonový gradient, preparát začne spotřebovávat kyslík, ale už nedělá ATP.

◊box["Vsuvka (solné můstky)"]{
-dotaz na solný můstek: skutečně solný můstkem se rozumí zařízení, kterým se vyrovnává náboj při měření redox potenciálu: máme dvě soustavy ve dvou nádobkách a měříme napětí mezi nimi – tendenci přecházet z jedné na druhou a protože se přenáší i náboj, potřebuje se solný můstek, např. KCl nebo NaCl a ty náboj vyrovnávají.

-sold-bridge-bold také existuje a je to slabá interakce zahrnující vodíkové můstky a elektrostatické interakce uplatňuje se to při skládání proteinu (aspartát, glutamát mohou reagovat a aminoskupinami např. lysinu vod. můstky a elektrostatickými silami) – takže se to může najít i v tomhle významu
}

◊ls[#:t "Bakteriální elemetární experiment"]{
    # přidáme na membránu bakteriorodopsin
        - bakteriorodopsin pumpuje protony poté, co je stimulován světlem
    # přidáme na membránu ◊abr{mch} ATP syntázu
    # posvítíme na membránu -> začne se generovat ATP
}

◊subsubsection{Struktura ATP syntázy}

◊img["atp-syntase.png"]{Struktura ATP syntázy}

Skládá se ze dvou podjednotek, F1 a FO.

◊ls[#:t "Podjednotka F1"]{
    - název se odvíjí z historie
        - při působení ureázou se F1 oddělil v jednom celku, kterému se říkalo faktor 1
    - je z pěti podjednotek, jsou označeny řecky po ◊|alpha|--◊|epsilon|, jsou zde v poměru 3:3:1:1:1
        - tato stechiometrie (poměr) je zachována v celém spektru sledovaných organismů, přestože samotné proteiny se liší
            - očividně stechiometrie a struktura vyplývají z mechanismu
}

◊ls[#:t "Stavba F1"]{
    - ◊|alpha| a ◊|beta| jsou v kruhu, střídají se (seskupení podobné pomeranči)
        - tam, kde se stýkají, je vazebné místo pro nukleotidy/ATP
    - dovnitř je zasunutá ◊|gamma| podjednotka
        - je to taková asymetrická smyčka (na obrázku (c) světle zelená)
        - protože je asymetrická, ovlivňuje konformaci ◊|alpha| a ◊|beta| podjednotek (viz níže)
            - ◊|gamma| se v průběhu syntázy otáčí a periodicky mění konformace jednotlivých ◊|alpha| a ◊|beta| podjednotek
    - podjednotky ◊|delta| a ◊|epsilon| zproztředkovávají kontakt ◊|gamma| s ostatními transmembránovými podjednotkami
}

◊ls[#:t "Konformace alfa a beta podjednotek"]{
    # ◊strong{těsná (T)}(na obrázku oblé), je zde navázáno ATP
    # ◊strong{volná (L)} (na obrázku oblé roky), je zde navázáno ADP
    # ◊strong{otevřená (O)} nebo též ◊strong{empty} (na obrázku hranaté), není zde vázáno nic
}

Průběh změn konformace je T -> O -> L -> T -> ...

◊ls[#:t "Podjednotka FO"]{
    - FO proto, že je inhibována oligomycinem
    - v tom nejjednodušším případě je ze tří podjednotek
        # A, protonový kanál
        # B, venkovní stonek
        # C multimerní prstenec, jenž je uložen ve vnitřní ◊abr{mch} membráně
            - tužkový model C podjednotky: je to prstenec tvořený různým počtem podjednotek (u bakterií 12, u člověka 8) a je velice důležitý pro výkonnost celého enzymu
    - u savců je v ní ještě více podjednotek, které se podílí především na stavbě vnějšího stonku (D, F6, atd.) a na stavbě kanálu
        - mají hlavně regulační funkci
}

◊subsubsection{Princip funkce}

◊ls{
    - pracuje jako ◊em{molekulární motor}
    - skládá se ze statoru a rotoru, otáčení rotoru způsobuje syntézu ATP
}

◊ls[#:t "Princip rotace"]{
    # když protékají protony přes kanál tvořený A, roztáčí prstenec C (viz níže)
    # na C je přes ◊|delta| a ◊|epsilon| připojená podjednotka ◊|gamma|, která se tedy otáčí s C
        - celý ◊strong{rotor} je tedy C + ◊|gamma| + ◊|delta| + ◊|epsilon|
        - samotná ◊|delta| se ale neotáčí, je pevně uchycena k B
    # otáčení ◊|gamma| způsobuje syntézu ATP
}

◊img["rotation-detail.png" #:w 300]{Detailní rozkreslení rotace C prstence}

◊ls[#:t "Princip rotace C prstence"]{
    - A podjednotka má dva hydrofilní půlkanály, jeden vedoucí z P a druhý vedoucí na N stranu membrány
    - každá C podjednotka (např. v kvasinkách jich je 10) má přibližně v polovině Asp zbytek, který může přijmout/odštěpit proton
    - A podjednotka má Arg, který na počátku reaguje s Asp přilehlé C podjednotky
    - průběh
        # kanálem z P strany přijde proton
        # proton se naváže na Asp, což oslabí jeho vazbu s Arg v A podjednotce
        # Arg se otočí směrem k protonovanému Asp vedlejší C podjednotky a naváže se na něj
        # uvolněný proton odejde kanálem na N stranu
        # C prstenec se otočí tak, aby nový Arg-Asp pár byl natočený ke kanálu vedoucímu z P strany
        # nový cyklus může započít
    - počet protonů, které musí komplexem projít, aby se dokončila jedna otáčka, je tím pádem roven počtu podjednotek v C prstenci
}

Dle měření se zdá že proběhne přibližně ◊strong{100 otáček za sekundu}.

◊box["Mindfuck — jak bylo dokázáno, že dochází k rotaci"]{
    ◊img["atp-synthase-rotation.png"]{K rotující C podjednotce bylo připojeno dlouhé, fluorescenčně označené aktinové vlákno. Po přidání ATP se celá struktura dala do pohybu, rotace aktinového vlákna byla zaznamenána na obrázku napravo.}
}

◊ls[#:t "Princip syntézy"]{
    - viz obrázek níže
    - šipka  označuje orientaci ◊|gamma|
    - když protečou tři protony, dojde k pootočení gamy o 120◊|deg|
        - tím se změní konformace všech tří dvojic (T -> O -> L -> T -> ...)
    - v kroce [L -> T] probíhá kinetická katalýza
        - mezi ◊|alpha| a ◊|beta| jsou navázané ADP a P
        - otočením se změní pozice substrátů tak, že se mezi nimi vytvoří makroergní vazba => sloučí se do ATP
    - na jeden cyklus (tři otočení), při kterém vzniknou tři molekuly ATP, je potřeba 9 protonů
}

◊img["atp-synthesis.png" #:w 300]{Princip syntézy při rotaci ◊|gamma|}

◊box["Reálný zisk ATP"]{
    ◊ls{
        - teoretický zisk: něco málo přes 3 ATP na jeden reoxidovaný NADH
            - 10 protonů za jeden NADH, na jedno ATP potřebujeme 3 protony
        - reálný zisk je kolem 2,5 ATP
            - k výrobě ATP potřebujeme kromě protonů i ADP a fosfát
                - k přenosu ADP do ◊abr{mch} se používá adenindinukleotidový translokátor (prohodí ATP a ADP)
                - anorganický substrát je transportován symportem s protony, tedy na jedno ATP reálně potřebujeme 3 + 1 protonů -> za 10 protonů získáme jen 2,5 ATP
        - za FADH je to ještě méně, jen 1.5
    }
}

◊box["Pohyb bakterií"]{
    ◊img["flagellum.png" #:w 300]{Rotace bičíku}

    Některé bakterie využívají mechanismus ATP syntázy k pohybu (v opačném směru, tedy ATP -> rotace).
}

◊subsubsection{Inhibitory}

◊img["inhibitors-of.png"]{Inhibitory a jejich cíle}

◊ls[#:t "Inhibitory"]{
    - kromě výše uvedených ještě ◊strong{malonát}, což je inhibitor kompetující se sukcinátem
        - objevil ho Krebs
    - ◊strong{protonofory} (FCCP, dinitrofenol)
        - hydrofobní molekuly, které se mohou protonovat
        - mimo membránu se protonují, poté vstoupí do matrix a depronují se, čímž zničí protonový gradient
}

◊ls[#:t "Rozpřahovací proteiny"]{
    - umí rozpřáhnout oxidaci a fosforylaci
    - používají se v eperimentech, ale i v těle, kde mají podobu proteinů vnitřní ◊abr{mch} membrány fungujících jako kanál
        - vybíjejí protonový gradient -> netřesová termogeneze
        - u člověka to umí jen děti těsně po narození, u savců jen při hibernaci
        - děje se to v hnědé tukové tkáni
}

◊ls[#:t "Hnědá tuková tkáň"]{
    - u člověka mezi lopatkami a v břišní dutině
    - obsahují hodně cytochromů – pohybují se v absorpci světla cca ◊u{500} až ◊u{600 nm}
    - slouží při adaptaci na změnu okolní teploty, slouží jako ohřívač krve vedoucí k mozku a dalším orgánům
    - buňky mají elektron-transportní řetězec končící rozpřahujícím proteinem
    - kanály jsou přísně regulované, jsou aktivovány mastnými kyselinami a inhibovány nukleotidy
}

◊subsubsection{Reoxidace glykolytického NADH}

◊img["glycerol-shuttle.png" #:w 400]{Glycerolfosfátový člunek}

◊ls[#:t "Glycerolfosfátový člunek"]{
    - využívá různě orientované izoenzymy
    - průběh viz obrázek
        - pozn. NADH je využito na redukci dihydroxyacetonfosfátu v enolázové reakci (hexóza => dvě triózy) a pak je zas ◊abr{mch} dehydrogenázou reoxidováno
    - nevýhoda: FAD přeskočí komplex I, čili zbytečně přijdeme o 4 protony
}

◊definitions{
    ◊term["Izoenzymy"]{
        Izoenzymy jsou enzymy, které katalyzují stejnou reakci, ale mají odlišnou strukturu.
    }
}

U člověka je častější následující cyklus.

◊img["malate-asp-nadh.png"]{Malát-aspartátový člunek}

◊ls[#:t "Malát-aspartátový člunek"]{
    - přenos redukčních ekvivalentů je zabezpečen dvěma izoenzymy malát-dehydrogenázy
    - zbytek viz obrázek (stačí znát základní cyklus, který je pod obrázkem v bodech popsán)
}

◊box["Energetické shrnutí glykolýzy"]{
    ◊img["glycolysis-energy.png"]
}

◊subsection{Regulace OF}

◊ls{
    - typicky regulace produktem (aby se nehromadil)
        - hexokinázová reakce, pyruvátdehydrogenázový komplex
    - často jsou také enzymy aktivovány či inhibovány molekulami informujícími o tom, jak je na tom buňka energeticky
        - dostatek energie –> hodně NADH a ATP -> inhibice nějakých kroků
        - nedostatek energie -> hodně ADP, anorganického fosfátu a neredukovaných koenzymů -> stimulace nějakých kroků
}

◊title{Lipidy, mastné kyseliny a jejich metabolismus}

◊definitions{
    ◊term["Lipidy"]{
        Různorodá skupina látek, které spojuje to, že jsou rozpustné v nepolárních rozpouštědlech. Nejběžnějším příkladem jsou triacylglyceroly.
    }

    ◊term["Triacyglyceroly"]{
        Estery glycerolu --- na glycerolu (trojsytném alkoholu) jsou esterovou (hydroxylová+karboxylová) vazbou napojeny tři mastné kyseliny (viz obrázek níže).
    }

    ◊term["Glycerofosfolipidy"]{
        Hlavní složky membrán, ampfipatické molekuly, mají dva ocásky z MK a na třetím je navázáno něco polárního, např. fosfatydilcholin, alkohol atp.
    }

    ◊term["Vosky"]{
        Estery MK a alkoholů s dlouhým řetězcem.
    }

    ◊term["Terpeny"]{
        Molekuly z izoprenových podjednotek.

        Izopren je 2-methyl-1,3-butadien, tvoří aromatické látky, a vyskytuje se hlavně v rostlinných hormonech.
    }
}

◊img["triacyglycerol.png" #:w 300]{Příklad triacylglycerolu}

◊section{Mastné kyseliny}

◊ls{
    - mají dlouhý řetězec, 4 a více uhlíků
    - pojmenování
        - často jsou pojmenované triviálně, podle toho, z čeho byly izolovány
        - označují se i čísly, ◊code{[# uhlíků]:[# dvojných vazeb]:[umístění dvojných vazeb]?}
            - stearová je 18:0 (18 uhlíků, žádná dvojná vazba)
            - olejová je 18:1:9 (18 uhlíků, dvojná vazba na devátém z nich)
}

Velice důležitá (dokonce esenciální) je pro nás kyselina ◊strong{arachnidová} --- je prekurzorem pro syntézu hormonů prostacyklinu, tromboxynu atd.

◊img["fatty-acids.png"]{Příklady mastných kyselin}

◊definitions{
    ◊term["Nasycené MK"]{
        Nemají dvojnou vazbu. Opakem jsou nenasycené MK.
    }

    ◊term["Polynenasycené"]{
        Mají více násobných vazeb.
    }
}

O to, které jsou zdravé a nezdravé, se stále vedou spory --- v současnosti se prosazují ty s mnoha nenasycenými vazbami, jako např. kukuřičný olej a olej světlice barvířské.

◊img["fa-packing.png" #:w 300]{Pro polynenasycené MK je složitější se uspořádat, proto mají nižší teplotu tání než nasycené MK, které u sebe dobře drží mnoha hydrofilními vazbami}

◊section{Oxidace MK}

◊ls[#:t "Ukládání energie do MK"]{
    - oproti sacharidům a polysacharidům skladnější, v přepočtu uložené energie na hmotnost jsou výhodnější
        - např. ptáci by pouze s cukrovými zásobami dlouhé migrace nezvládli (buďto by měli málo energie, nebo by se neunesli)
        - i člověk má tuk jako zásobní substrát
        - ale trvá dlouho, než se energie zmobilizuje
    - zvířata závislá na tuku: zpravidla s omezeným přístupem k pitné vodě, jsou tedy závislé na metabolické vodě, ta vzniká na komplexu 4
}

◊img["stored-metabolic-fuel.png"]{Běžné množství uložené energie ve třech jedincích}

◊ls[#:t "Sprinteři, mílaři a maratonci"]{
    - sprinteři: ATP ve svalech -> kreatinfosfát -> anaerobní glykolýza
    - mílaři: aerobní glykolýza (glykogen -> ◊chem{CO2}) -> nastupuje tuková tkáň
    - maratonci: oxidace mastných kyselin
}

◊ls[#:t "Zpracování tuků pro energii"]{
    # rozložení tuků na MK a transport MK do buněk
    # rozložení MK v buňce
        # aktivace MK
        # transport MK do ◊abr{mch}
        # ◊|beta|-oxidace, rozložení MK
        # KC, OF
}

◊subsection{Rozložení tuků na MK}

◊img["lipid-path.png" #:w 500]{Cesta lipidů skrz člověka}

◊ls[#:t "Rozložení tuků na MK"]{
    # tuky v trávicí soustavě tvoří kapénky, jež jsou špatně napadnutelné enzymy
        - <= tuky josu velice hydrofobní
        - je nutné je ◊strong{emulgovat}
    # žlučové kyseliny a jejich soli tuky emulgují, tvoří se micely
    # lipázy ve střevě odštěpují jednotlivé MK
    # MK se dostávají přes membránu, stávají se z nich ◊strong{chylomikrony}
        - chylomikron je útvar tvořený jednovrstevnou membránou s triacylglyceroly a estery uvnitř
    # chylomikrony jdou přes stěnu střevní sliznice do krve
    # v krvi se rozpadnou na MK a jsou transportovány na místo určení
        - pokud jsou potřeba hned tak do myocytů (svalů)
        - pokud hned potřeba nejsou, jdou do bílé tukové tkáně, kde se z nich znovu tvoří glyceroly a tukové kapénky
        - v krvi jsou MK vázány na sérový protein ◊strong{albumin}
}

◊img["chylomicron.png" #:w 400]{Chylomikron}

◊subsection{Aktivace MK}

MK se musí dostat do ◊abr{mch}, kde probíhá ◊|beta|-oxidace. Aby ale prošla dovnitř, musí být nejprve ◊strong{aktivována} tím, že se z ní udělá acyl-CoA (ne acetyl, ten byl v KC).

◊img["acyl-coa-synthesis.png" #:w 500]{Konverze MK na acyl-CoA}

Celková přeměna je tedy

◊$${\ce{MK + CoA + ATP -> MK-CoA + AMP + 2P_i},}

a je silně exergonická (◊${\Delta G'^{\circ} = \pu{-34 kJ/mol}}). U reakce je použito pyrofosfátové štěpení (ATP -> AMP).

◊subsection{Transport MK do ◊abr{mch}}

◊img["carnitine-cycle.png"]{Karnitinový cyklus}

◊ls[#:t "Průchod acyl-CoA do ◊abr{mch}"]{
    - k tomu slouží molekula karnitin, součást acyl-CoA-karnitinového cyklu
        - karnitin je mnohem menší, než CoA, proto se lépe dostává přes membránu; zásbonárny CoA v cytoplazmě a ◊abr{mch} jsou oddělené
    - v cyklu též figurují enzymy kartininacyltransferázy I (vnější membrána) a II (vnitřní membrána)
        - kartininacyltransferázy reálně tvoří komplex procházející přes obě membrány
    - viz obrázek
}

◊subsection{◊|beta|-oxidace}

◊img["mk-metabolism-stages.png" #:w 350]{Fáze zpracování MK v ◊abr{mch}}

◊ls[#:t "Beta-oxidace"]{
    - ve výsledku rozštípá MK na dvojuhlíkaté zbytky, které poté jako acetyl-CoA vstupují do KC a kromě toho také uvolní 64 elektronů v podobně redukovaných koenzymů, které se poté účastní OF
    - skládá se ze čtyř reakcí
}

◊img["beta-oxidation.png" #:w 400]{Průběh ◊|beta|-oxidace}

Viz obrázek, popisky jen doplňují detaily.

◊ls[#:t "První reakce"]{
    - acyl-CoA dehydrogenáza oxiduje MK
    - jako koenzym má FAD, které se redukuje a postupuje do OF
}

◊ls[#:t "Druhá reakce"]{
    - v enoyl-CoA je dvojná vazba mezi ◊|alpha| a ◊|beta| uhlíky, které se chceme zbavit
    - ◊|alpha| uhlík proto hydratujeme
}

◊ls[#:t "Třetí reakce"]{
    - na ◊|beta| uhlíku vytvoříme karbonylovou skupinu
    - u toho se redukuje ◊chem{NAD+}
}

◊ls[#:t "Čtvrtá reakce"]{
    - zbyde nám MK-acyl-CoA, přičemž MK je nyní o dva uhlíky kratší
}

◊|beta|-oxidaci se někdy říká též ◊strong{Lynenova spirála}

◊img["lynen-spiral.png" #:w 200]{Lynenova spirála}

◊box["Co když má MK lichý počet uhlíků"]{
    ◊ls{
        - na konci ◊|beta|-oxidace vznikne propionyl-CoA
        - ten je potřeba přemenit tak, aby mohl vstoupit do KC
            - přemění se na sukcinyl-CoA
        - k procesu je potřeba vitamín ◊chem{B12}
        - celou reakci není potřeba umět
    }

    ◊img["bo-odd-number.png" #:w 400]{Změna propionylu-CoA na sukcinyl-CoA}
}

◊box["Co když je MK nenasycená"]{
    ◊ls{
        - dvojné vazby je potřeba nahradit jednoduchými
        - pak se normálně odbourávají (někdy probíhá například ◊|omega|-oxidace)
        - celou reakci není potřeba umět
    }

    ◊img["unsaturated-bo.png" #:w 400]{Průběh ◊|beta|-oxidace na polynenasycené MK}
}

◊subsubsection{Zisk ATP}

V následující tabulce můžeme vidět zisk z ◊|beta| oxidace jedné molekuly palmitoyl-CoA. Kdybychom počítali zisk z palmitátu, musíme ještě odečíst 2 ATP za jeho aktivaci na palmitoyl-CoA.

◊img["atp-yield-bo.png"]{Zisk ATP z ◊|beta|-oxidace}

◊subsubsection{Lokalizace}
◊ls{
    - kromě ◊abr{mch} probíhá i v peroxisomech, u rostlin dokonce výhradně tam
        - dráhy jsou vlastně principiálně shodné
            - liší se tím, že v peroxisomech se oxidují MK s dlouhými řetězci (>20) na osmi-uhlíkaté zbytky a ty poté pokračují do ◊abr{mch}
            - navíc v prvním kroku v mitochonrdii vzniká o jeden redukovaný koenzym více
    - enzymy pracují buďto jako samostatné entity, nebo v ◊strong{superkomplexech}
        - peroxisomální a glyoxysomální komplexy mají různé počty vazebných míst pro MK různé délky
}

◊img["bo-localization.png" #:w 400]{Rozdíl průběhu ◊|beta|-oxidace v ◊abr{mch} a v peroxisomu}

◊subsection{Ketolátky}

◊ls{
    - aceton, acetoacetát, hydroxybutyrát
    - běžný postup: MK -> acetly-CoA -> KC
        - pokud je málo oxalacetátu, KC se zastaví
        - oxalacetát se běžně doplňuje anaplerotickými reakcemi, ale pro ty jsou výchozím substrátem produkty glykolýzy
            - KC se tedy při nedostatku cukru (např. u neléčených diabetiků, za okolností vyčerpání) zastaví
            - za takových okolností vznikají ze dvou acetyl-CoA právě ketolátky
            - lidem te poté z úst cítit aceton
    - přestupují hematoencefalickou bariéru => mohou sloužit v mozku (a dalších tkáních) jako zdroj energie
}

◊title{Metabolismus glykogenu a další dráhy metabolismu cukrů}

◊section{Metabolismus glykogenu}

◊ls{
    - glykogen je zásobním polysacharidem živočichů,
    - proč se vůbec využívá, když tuky poskytují dvakrát více energie
        - získání energie z polysacharidů je rychlejší než z tuků
        - z glykogenu lze získávat energii anaerobně
        - odbouráváním glykogenu vzniká glukóza, která se může podílet na udržování hladiny glukózy v krvi a může být dodávána do tkání
    - v buňkách se nachází v cytoplasmatických granulích o velikosti ◊u{10} až ◊u{40 nm}, u obratlovců převážně na dvou místech
        - v játrech: glykogen může tvořit až 10 % hmotnosti jater a množství glykogenu v játrech závisí na stavu nasycenosti organismu (při hladovění klesá)
        - ve svalech: může tvořit 1-2 % hmotnosti svalu. Množství nesouvisí ani tak s nasyceností, jako s trénovaností (člověk je trénovaný -> množství glykogenu ve svalech roste)
            - svalů je ale více než jater, takže v absolutních číslech je glykogenu nejvíce ve svalech
        - dále se malé množství nachází v mozku
}

◊ls[#:t "Struktura glykogenu"]{
    - stejná jako struktura amylopektinu
        - skládá se z glukózových podjednotek propojených ◊|alpha|-1,4-glykosidickými vazbami a v místě větvení jsou ◊|alpha|-1,6 glykosidické vazby
    - glykogen je hustěji větven, než amylopektin, protože živočichové potřebují mobilizovat energii rychleji, než rostliny
        - jednotky mohou být odbourávány a všech větvích současně
        - 50% glukózových podjednotek ve struktuře se nachází před prvním místem větvení
    - vždy má pouze jeden redukující konec
}

◊subsection{Odbourávání glykogenu}

◊subsubsection{První reakce}

◊ls{
    - prvním a zároveň nejdůležitějším enzym odbourávání glykogenu je ◊strong{glykogenfosforyláza}
        - dimer, každý z monomerů má C' a N' terminální doménu
        - hlavní regulační enzym odbourávání glykogenu
        - má důležitý kofaktor, ◊strong{pyridoxal-5-fosfát}
            - pyridoxin je vitamín ◊chem{B6}
}

◊img["glycogen-phosphatase.png" #:w 300]{Struktura monomeru glykogen fosforylázy}

◊ls[#:t "Struktura glykogen fosforylázy"]{
    - katalytické místo
        - nachází se na rozhraní mezi N a C koncovou doménou
        - má též místo pro vazbu kofaktoru
    - glykogen-vazebné místo
        - na rozhraní Nterminálních domén
        - vejde se do nej 4--5 glukózových podjednotek, avšak pouze v lineárním stavu (nevětvených)
}

◊img["glycogen-phosphorylase.png" #:w 400]{Glykogen fosforylázová reakce}

◊ls[#:t "Reakční mechanismus"]{
    - nemusíme znát v detailu
    - dochází ke štěpení glykogenu v procesu ◊strong{fosforolýzy}
        - podobné jako hydrolýza, ale místo vdy je zde kyselina fosforečná
        - mechanismem reakce je tedy fosforolýza škrobu, jedná se o acidobazickou katalýzu
    - úloha pyridoxal-5-fosfátu v reakci je půjčovat proton zbytku kyseliny fosforečné, která štěpí vazbu mezi glukózovými podjednotkami
        - funguje jako protonové relé, které v průběhu reakce půjčí proton kyselině fosforečné a na konci si ho zase odebere
    - enzym je s glykogenem stále v kontaku, nemusí disociovat a resociovat po každé reakci -> urychlení
        - glykogen projíždí kapsou v enzymu
}

◊subsubsection{Druhá reakce}

Během první reakce vzniká glukóza-1-fosfát, do glykolýzy však potřebujeme glukózu-6-fosfát. O změnu z jednoho na druhé se stará druhá reakce odbourávání glykogenu.

◊img["phosphoglucomutase.png"]{Fosfoglukomutázová reakce}

◊ls[#:t "Fosfoglukomutázová reakce"]{
    - viz obrázek
    - probíhá přes meziprodukt, kde jsou fosforylovaná obě místa: glukózu-1,6-bisfosfát
        - v katalytickém centru enzymu tedy musí být skupina, která dodává ten druhý fosfát -> obsahuje Ser, který váže fosfát
    - podobnou reakci jsme probírali v glykolýze, kde se pomocí fosfoglycerátmutázy mění 3fosfofgylcerát na 2-fosfoglycerát
}

◊subsubsection{Třetí reakce}

◊ls{
    - souvisí se strukturou glykogenfosforylázy, která umí zpracovat jen lineární glykogen
    - když se dojde k místu větvení, nasedne linearizační enzym, který zbytky linearizuje
}

◊img["glycogen-third-reaction.png" #:w 400]{Linearizace glykogenu}

◊ls[#:t "Průběh reakce"]{
    - (◊|alpha|1 -> 4)-transglykosylázová aktivita
        - krátká část řetězce (např. na obrázku 4 jednotky, tzv. limitující systém) pospojovaného (◊|alpha|1 -> 4) vazbami je přesunuta
        - v původní větvi zůstává už jen jedna glukóza, která je připojena na větvící místo vazbou (◊|alpha|1 -> 6)
        - ze dvou větví vytvoří jednu delší a jednu, která má už jen jednu glukózu
    - (◊|alpha|1 -> 6)-glukosidázová aktivita
        - hydrolyzuje glukózový zbytek v místě větvení, který byl připojen (◊|alpha|1 -> 6) vazbou
        - tento se uvolňuje jako glukóza
        - změna (◊|alpha|1 -> 6) na (◊|alpha|1 -> 4) není z energetického hlediska možná, proto dochází k hydrolýze
}

Kolem 90% glukózy z glykogenu se uvolňuje jako glukóza-6-fosfát, zbytek pochází z míst větvení a uvolňuje se jako glukóza.

◊subsection{Syntéza glykogenu}

◊subsubsection{První reakce}

Nejprve je potřeba připravit energeticky nabitou glukózu.

◊img["udp.png" #:w 400]{Syntéza UDP-glukózy}

◊ls[#:t "Syntéza UDP-glukózy"]{
    - do reakce vstupuje glukóza-1-fosfát a UTP (uridintrifosfát)
    - katalyzuje ji ◊strong{UDP-glukózadifosforyláza}
        - enzym je pojenovaný podle zpětné reakce
    - vzniká pyrofosfát -> dělí se během reakce na dva fosfáty -> velké množství energie
    - UTP je doplňováno reakcí ◊chem{UDP + ATP -> UTP + ADP}, celá reakce nás tedy "stojí" jedno ATP
}

◊subsubsection{Druhá reakce}

Aktivovaná glukóza se dále využije k syntéze glykogenu.

◊img["glycogen-synthesis.png"]{Syntéza glykogenu z UDP-glukózy}

◊ls[#:t "Syntéza glykogenu z UDP-glukózy"]{
    - glukóza se připojí na již existující řetězec (s # glukóz > 4)
    - na začátku reakce je potřeba ◊em{primer}, tím je hydroxylová skupina na Tyr na ◊strong{glykogeninu}
        - na tu se naváže první glukózová podjednotka -> poté několik dalších -> potom už to jede pomocí glykogensyntázy
    - glykogensyntázová reakce je hlavní regulační reakcí syntézy glykogenu
}

◊subsubsection{Třetí reakce}

Poslední reakcí je opak linearizace při rozkladu glykogenu --- zde máme naopak větvící reakci a větvící enzym.

◊img["glycogen-branching.png"]{Větvení glykogenu}

◊ls[#:t "Větvení glykogenu"]{
    - jediný enzym, má ale více jmen
        - (mé nejoblíbenější) amylo (◊|alpha|1->4) na (◊|alpha|1->6) transglykosyláza
        - ◊|alpha|1,4 na ◊|alpha|1,6-transglykosyláza
        - glykosyl-(4->6) transferáza
    - na dostatečně dlouhé větvi, která je tvořená (◊|alpha|1->4) glykosidickými vazbami, odštěpí glukózu a přilepí ji jinde vazbou (◊|alpha|1->6)
        - v tomto směru je to z energetického hlediska možné
        - "dostatečně dlouhá větev" = alespoň 11 glukóz a alespoň 4 podjednotky od posledního místa větvení, z prostorových důvodů
}

◊img["glycogen-structure.png" #:w 300]{Výsledná struktura glykogenu}

◊subsection{Regulace glykogenfosforylázy}

◊ls{
    - dochází jak k alosterické regulaci (na alosterickém místě), tak k regulaci posttranslačními modifikacemi
    - oba druhy regulace jsou provázané
}

◊box["Spřažení metabolismu glykogenu a glykolýzy"]{
    ◊ls{
        - v játrech je glykogen odbouráván tehdy, když je potřeba zvýšit hladinu glukózy v krvi
            - např. při hladovění, nebo i při jiných zvýšených nárocích na svalovou práci, kterou signalizují stresové hormony
            - odbourání glykogenu nemá to být rovnou spřaženo s glykolýzou, má glukózu jen uvolnit do krve, glykolýza je tedy inhibována
        - ve svalech je odbouráván pro svalovou práci
            - zde je odbourávání glykogenu přímo pro glykolýzu
    }

    Jak to ale zařídit?

    ◊ls[#:t "Mechanismus spřažení"]{
        - fruktóza-6-bisfosfát je nejsilnější alosterický regulátor fosfofruktokinázy, hlavního glykolytického enzymu
            - ve svalech je při odbourávání glykogenu podporována tvorba tohoto produktu
            - v játrech je podporováno jeho odbourávání
    }
}

◊subsubsection{Alosterická regulace}

◊definitions{
    ◊term["R a T forma enzymu"]{
        Enzym v R (relaxed) formě je, alespoň v kontextu metabolismu, vždy aktivnější než enzym v T (tense) formě. Jedná se o stejný enzym, ale ve dvou stavech.
    }
}

◊img["glycogen-phosphorylase-regulation.png" #:w 400]{Přechod z forforylázy A na fosforylázu B a naopak}

◊ls[#:t "A a B glykogenfosforyláza"]{
    - kromě R a T má glykogenfosforyláza i A a B formu
        - jediný strukturní rozdíl: A má fosforylovaný ◊chem{Ser14}, B ne
    - funkční rozdíly
        - fosforyláza A
            - aktivnější, nereaguje tolik na alosterickou regulaci
            - za normálních okolností je v R stavu
            - do T stavu je převedena pouze vysokou koncentrací glukózy
        - fosforyláza B
            - je velice citlivá na alosterické regulátory
            - je inhibována vysokou koncentrací ATP či glukózy-6-fosfátu
            - za normálních okolností je v T stavu
            - aktivována je vysokou koncentrací AMP
    - přechod mezi A a B zajišťují dva různé enzymy
        - o A -> B se stará ◊strong{fosfoprotein fosfatáza}
        - a B -> A zajišťuje ◊strong{fosforyláza-kináza} (dříve ◊strong{kináza-fosforylázy B}, protože fosforyluje ◊chem{Ser14})
        - k fosforylaci či defosforylaci dochází pouze v T formách
}

Fosforylace Ser u A a AMP na alosterickém místě u B podobným způsobem podporují R formu.

◊subsubsection{Regulace posttranslačními modifikacemi}

◊ls{
    - metabolismus gylkogenu je regulován pomocí ◊strong{bicyklické kaskády}
        - jeden enzym aktivuje druhý a ten aktivuje třetí.
        - výhody: na každém "předání štafety" je možné znásobit signál, detailněji signál regulovat atd. (zvlášť, když se přidá více úrovní než jen dvě)
}

◊(add-abr "cAMP" "cyklický adenosinmonofosfát")
◊(add-abr "PKA" "proteinkináza A, cAMP-dependentní proteinkináza")

◊ls[#:t "Regulace glykogenfosforylázy a glykogensyntázy"]{
    # vazba hormonu na receptor
    # uvolňování cyklického AMP (dále jen ◊em{cAMP})
    # aktivace ◊abr{cAMP}-dependentní kináza (jinak též proteinkináza A, dále jen ◊em{PKA})
    # aktivace kinázy fosforylázy B, vede k aktivaci
    # fosforylace glykogenfosforylázy a glykogensyntázy
        - glykogenfosforyláza A je tím aktivována, glykogen se začne odbourávat
        -naopak glykogensyntáza je fosforylací deaktivována
}

Po glukózové infuzi tedy stoupne odbourávání glykogenu a zpomalí se jeho opětovná syntéza.

◊subsubsection{Hormonální regulace metabolismu sacharidů}

◊ls[#:t "Játra (stav: v krvi je málo glukózy)"]{
    # pankreatické ◊|alpha| buňky vyplaví glukagon
    # ten se váže na svůj receptor na jaterní buňce, jenž je spřažen s adenylát-cyklázou -> tvoří se ◊abr{cAMP} (◊em{druhý posel})
    # ◊abr{cAMP} spustí bicyklickou kaskádu odbourávání glykogenu
    # glukóza se uvolňuje do krve, zvyšuje se její hladina
}

◊ls[#:t "Játra (stav: v krvi je hodně glukózy)"]{
    # glukóza přímo proniká do jaterních buněk a tam inhibuje glykogenfosforylázu
}

◊ls[#:t "Játra (stav: tělo je ve stresu)"]{
    # na jaterní buňku se váže adrenalin, jsou tam na něj dva (◊|alpha| a ◊|beta|) receptory
    # ◊|beta| receptory -> adenylát-cykláza -> ◊abr{cAMP} -> bicyklická kaskáda
    # ◊|alpha| receptory -> štěpení fosfatidyl-inozitol-trifosfátu -> inozitoltrisfosfáty a diacylglyceroly (druzí poslové, stejně jako ◊abr{cAMP})
    # působením inozitoltrisfosfátu se uvolňuje vápník -> aktivace kinázy-fosforylázy -> odbourávání glykogenu
    # glukóza se uvolňuje do krve
        - tentokrát to není proto, aby se zvýšila její hladina, ale kvůli dopravení do svalů
}

◊img["hormons-glycogen.png" #:w 400]{Signalizační kaskáda ve svalových a jaterních buňkách (není potřeba umět v detailu)}

◊ls[#:t "Svaly"]{
    # aktivuje se adrenalinový receptor (svaly mají pouze ◊|beta|)
    # adenylát-cykláza
    # vznik ◊abr{cAMP}
    # odbourávání glykogenu
        - ihned následuje glykolýza
}

Navíc při vysokých hladinách glukózy v krvi vyplavují buňky pankreasu do krve inzulín, který má (mimo jiné) za následek to, že jsou ve svalových buňkách transportéry pro glukózu ◊chem{GLU4} přenášeny z cytoplasmy na membránu a umožňují  glukóze vstupovat do buněk ve velkém množství.

◊box["Choroby spojené s metabolismem glykogenu"]{
    Označují se jako ◊strong{glykogenózy} a zpravidla jsou způsobeny tím, že je mutován nějaký enzym odbourávání nebo syntézy glykogenu ve svalech či játrech.

    ◊img["mcardle.png"#:w 300]{Hladiny ATP (ADP) u zdravých jedinců a u jedinců trpících McArdleovou chorobou}

    ◊ls[#:t "McArdleova choroba"]{
        - defekt ve svalové glykogenfosforyláze
        - při lehké zátěži se prudce zdvihne hladina ADP, protože svalová glykogenfosforyláza nereaguje na svalovou práci, dochází k odbourávání svalového glykogenu
        - při dlouhotrvajícím cvičení je rozdíl menší, protože jsou svaly zásobeny z jaterního glykogenu
    }
}

◊box["Metabolismus glykogenu a sport"]{
    ◊ls{
        - 6 dnů před vytrvalostní závodem se omezí příjem cukrů a glykogenu v potravě
        - poslední 3 dny se jich naopak konzumuje větší množství
        - tělo má signalizován nedostatek a tak nejen, že doplní ten ztracený, ale ještě zvětší zásoby
    }
}

◊subsection{Coriho cyklus}

◊ls{
    # v odpočívajícím svalu se vytváří zásoby glykogenu, v aktivním probíhá reakce měnící glykogen -> laktát
    # laktát je transportován do krve, a krví do jater
    # v játrech se laktát účastní glukoneogeneze, tvoří se z něj opět glukóza
}

Cyklus je pojmenován podle manželů Coriových, absolventů Karlovy univerzity a nositelů Nobelovy ceny.

◊section{Glukoneogeneze}

◊(add-abr "gng" "glukoneogeneze")

◊ls{
    - dále jen ◊em{gng}
    - syntéza cukrů z necukrů
    - cukry jsou substrát pro vznik energie, ale jsou důležité i pro další energetické substráty (např. pro zpracování tuků v KC)
}

◊img["gluconeogenesis.png" #:w 400]{Schéma toho, z čeho mohou cukry vznikat (zvlášť pro rostliny a živočichy)}

◊ls[#:t "Popis schématu"]{
    - živočichové mohou tvočit cukry z kyseliny mléčné
    - rostliny z ◊chem{CO2}, používají ho jako zdroj uhlíku a budují jej do kostry cukrů
    - střed je společný oběma: dokážou cukry dělat z triacylglycerolu (ale jen z té alkoholové části) a z glukogenních AK
        - AK jsou ty, které na různých místech vstupují do KC: Ala, Arg, Asp, Cys, Glu, Gly, His, hydroxyprolin, Met, Pro, Ser, Thr, Val
            - nevstupují samozřejmě samotné AK, ale AK přetvořené buďto v nějaký z intermediátů KC, nebo přímo na acetyl-CoA
}

◊img["glucogenic-aa.png"]{Obrázek glukogenních AK v souvislosti s KC}

◊ls[#:t "Glukoneogeneze z AK"]{
    - ◊abr{gng} se mohou účastnit ty AK, které do KC vstupují až po 1. nebo 2. dekarboxylaci
        - v opačném případě by přišly o dva uhlíky (a žádný by tedy nezbyl na ◊abr{gng})
    - Lys a Leu vstupují do reakce jako acetyl-CoA (tedy před oběma dekarboxylacemi) a nemohou se tedy ◊abr{gng} zúčastnit
}

◊box["Výroba cukrů z tuků"]{
    ◊ls{
        - z MK sice cukry (víceméně) vznikat nemohou, ale z glycerolu (součást  tuků) ano
        - glycerol nám zbyde poté, co z něj lipázy odštěpí MK
        - glycerol -> fosforylace na glycerol-3-fosfát -> dihydroxyacetonfosfát (viz obrázek níže, tam jsou i enzymy)
        - dihydroxyacetonfosfát se pak může účastnit glykolýzy nebo ◊abr{gng}
            - v glykolýze může být v páté reakci zaměňován s glyceraldehyd-3-fosfátem, který je (podobně jako dihydroxyacetonfosfát) produktem čtvrté reakce
        - malá část molekuly tuku tedy do ◊abr{gng} vstoupit může
    }

    Navíc, propionyl-CoA vzniklý z ◊|beta|-oxidace MK s lichým počtem uhlíků může vstoupit do KC, kde unikne oběma dekarboxylacím a jeho uhlíky tedy také mohou sloužit k syntéze cukru.

    ◊img["glycerol-into-gng.png" #:w 400]{Vstup glycerolu do ◊abr{gng}}

}

◊ls[#:t "Vztah glykolýzy a glukoneogeneze"]{
    - reakce ◊abr{gng} jsou často jen obrácené reakce glykolýzy
    - musí se ošetřit, aby se reakce glykolýzy a ◊abr{gng} netočily pořád dokola (tzv. ◊em{jalové cykly})
    - proto jsou v glykolýze tři ireversibilní reakce (na obrázku vyznačeny tučně)
        # hexokinázová (glukokinázová) reakce je energeticky posunuta k produktu (je exergonická) a tím pádem prakticky nevratná
        # při vzniku ◊abr{F16BP} je také velká změna volné energie, opět hodně exergionická reakce
        # pyruvát-kinázová reakce, fosfoenolpyruvát je makroergní sloučenina, opět silně exergonická (i když v normálních podmínkách více než in vivo)
    - tyto nevratné reakce se tedy musí obejít
}

◊img["glyconeogenesis.png" #:w 400]{Glykolýza a ◊abr{gng}}

◊subsection{Obcházení pyruvát-kinázové reakce}

Viz obrázek --- skládá se ze dvou částí.

◊ls[#:t "Pyruvát-karboxylázová reakce"]{
    - pyruvát (tříuhlíkatá sloučenina) je karboxylován na oxaloacetát (čtyčuhlíkatá sloučenina)
    - už jsme na ni narazili
        - je to anaplerotická reakce, dodává oxalacetát do KC
        - může ale sloužit i jako donor substrátu (oxalacetátu) pro ◊abr{gng}
}

◊img["pyruvate-karboxylase.png"]{Detailní náhled do toho, jakou roli má biotin v pyruvát-karboxylázové reakci (není třeba se učit)}

◊ls[#:t "Role biotinu"]{
    - funguje jako koenzym přenášející karboxylovou skupinu
    - mechanismus je podobný, jako jsme už jednou viděli
        - biotin se pohybuje na dlouhém raménku Lys
        - hýbe se z jednoho reakčního místa, kde naváže karboxylovou skupinu (která tam přichází jako bikarbonát), na druhé aktivní místo enzymu, kde ji předá na pyruvát
}

◊img["pep-ck.gif" #:w 300]{Fosfoenolpyruvátkarboxykinázová reakce}

◊ls[#:t "PEP karboxykinázová reakce"]{
    - oxaloacetát -> fosfoenolpyruvát (PEP)
    - PEP je intermediátem glykolýzy, čili opět mohou pokračovat reverzibilní reakce
}

V pyruvát-kinázové reakci v glykolýze vznikne 1 ATP na jeden fosfoenolpyruvát, ale když reakci obracíme, potřebujeme hned dvě makroergní sloučeniny (pyruvát-karboxyláza potřebuje jednu ATP a fosfoenolpyruvátkarboxykináza zas jednu GTP).


◊subsection{Obcházení zbývajících dvou kinázových reakcí}

◊ls{
    - obě kinázové reakce jsou nahrazeny fosfatázovými reakcemi
    - ◊chem{F16BP ->[fruktóza-1,6-bisfosfatáza] fruktóza-6-fosfát + P_i}
        - ireverzibilní kinázová reakce byla obejita hydrolázovou reakcí
        – na této úrovni organismu se nikdy nemůže syntetizovat ATP, pouze se zde spotřebovává, fosfát se zde hydrolyzuje
   - to samé platí i pro hexokinázovou reakci, glukóza-6-fosfatázovou reakcí dojde k odštěpení fosfátu a z z glukóza-6-fosfátu vznikne glukóza
}

◊img["g-6-pase-localization.png"]{Umístění glukóza-6-fosfatázy}

◊ls[#:t "Činnost glukóza-6-fosfatázy"]{
    - je umístěna na membráně ER
    - jde o relativně velký komplex, jeho součástí jsou jeden enzym a tři přenašeče
    - průběh reakce
        # glukóza-6-fosfát je transportována do lumen hladkého ER, kde je aktivní místo enzymu
        # enzym odhydrolyzuje fosfát, vznikne glukóza
        # tyto produkty jdou z ER přes přenašeče
    - glukóza v cytoplazmě je totiž vystavena nebezpečí, že bude transportována z buňky
        - to je jedna z věcí, před kterou ji hexokináza fosforylací ochrání
        - tím, že je tvořena v ER se tento její osud oddaluje

}

◊subsection{Kompartmentalizace ◊abr{gng}}

◊ls{
    - první část je v ◊abr{mch} => problém transportu přes vnitřní membránu
    - začíná se vždy u pyruvátu
        - ten se ještě v ◊abr{mch} přemění (pomocí pyruvát-karboxylázy) na oxalacetát
        - jak dostat oxalacetát z ◊abr{mch}?
            # zasáhne ◊abr{mch} PEP karboxykináza, oxalacetát -> PEP za spotřeby GTP (PEP má přenašeč)
            # zasáhne malát-dehydrogenáza, oxalacetát -> malát, a poté v cytoplazmě opět malát -> oxalacetát
                - při tom se však oxiduje jedno ◊chem{NADH} v ◊abr{mch} a naopak redukuje se jedno ◊chem{NAD+} v cytoplazmě
                - to může sloužit k transdehydrogenázovým reakcím
}

◊subsection{Regulace}

◊ls{
    - pyruvát má spousto možností, kam jít
        - např. vstoupí do pyruvátdehydrogenázové reakce a vzniká z něj acetyl-CoA, ten jde do KC
        - nebo např. může jít do ◊abr{gng}, do pyruvátkarboxylázové reakce (a vznikne z něj oxalacetát)
    - čili pokud buňka vyrábí acetyl-CoA z tuků, inhibuje pyruvátdehydrogenázu a aktivuje pyruvátkarboxylázu
        - vzniklý oxalacetát může vstoupit jako produkt jako anaplerotické reakce do KC, nebo půjde do ◊abr{gng}
}

◊img["fructose-16_p.png" #:w 150]{Fruktóza-1,6-bisfosfát}

◊img["fructose-2-6-p.png" #:w 250]{Fruktóza-2,6-bisfosfát}

◊(add-abr "F26BP" "fruktóza-2,6-bisfosfát")

◊ls[#:t "Fruktóza-2,6-bisfosfát"]{
    - dále jen ◊em{F26BP}
    - je podobná ◊abr{F16BP}, až na polohu fosforu (viz obrázek výše)
    - regulační molekula, stimuluje fosfofruktokinázu-1 (PFK-1) a inhibuje fruktózu-1,6-bisfosfatázu (FBPáza-1), viz obrázek níže
        - tím inhibuje celou ◊abr{gng} a aktivuje glykolýzu
}

◊img["f26bp.png" #:w 300]{Vliv ◊abr{F26BP} na regulaci ◊abr{gng}}

A jak je regulováno množství ◊abr{F26BP}?

◊img["f26bp-regul.png"]{Regulace množství ◊abr{F26BP}}

◊ls[#:t "PFK-2 a FBPáza-2"]{
    - jsou vlastně jedním proteinem se dvěma doménami
    - PFK-2 -> ◊abr{F26BP}, FBPáza-2 naopak
        - aktivace PFK-2 části => ◊abr{F26BP} => podpoření glykolýzy
        - aktivace FBPázy-2 => podpoření ◊abr{gng}
    - FBPáza-2 část je nepřímo aktivována glukagonem
        - glukagon -> adenyly cykláza -> ◊abr{cAMP} -> CDK -> fosforylace proteinu
        - glukagon => ◊abr{gng}
    - PFK-2 část je nepřímo aktivována inzulínem
        - inzulín -> fosfoprotein fosfatáza -> defosforylace proteinu
        - inzulín => glykolýza
}

◊section{Pentózofosfátová dráha}

◊ls{
    - rozklad glukózy-6-fosfátu (glukóza zpracovaná hexokinázou), avšak ne na triózy, ale na pentózy
    - neobyčejně důležité – vzniká ◊strong{ribóza} (součást NK, ATP, koenzymu NADH, NADPH atd.)
    - je amfipatická
}

◊img["pentose-phosphate-general.png" #:w 400]{Obecné schéma pentózofosfátové dráhy}

◊ls[#:t "Neoxidativní část dráhy"]{
    - ne vždy ribózu potřebujeme, dráha se někdy využívá pouze ke generování NADPH
        - např. při laktaci potřebujeme hodně MK (hodně NADPH), ale ribózy nějak moc ne
        - opačným příkladem by byla např. regenerace jater, při které místo MK potřebujeme hlavně NK (tedy hodně ribózy)
    - glukózu je možné regenerovat (tedy pentózu vrátit zpět na hexózu), poté spustit celou oxidativní část znovu, získat opět dvě NADPH a tak dokola
        - tato proměna (5->6) probíhá v ◊strong{neoxidativní části} dráhy
        - pentóza se mění na hexózu pomocí ◊strong{transketolázových} a ◊strong{trans-aldolázových} reakcí
}

◊note{
    NADH je součástí katabolických drah, zatímco NADPH je důležitý pro reduktivní syntézy, například syntézu MK.
}

◊subsection{Průběh oxidativní části}

◊img["pentose-phosphatase-detail.png" #:w 300]{Detailní průběh oxidativní části dráhy}

Reakce jsou zřetelné z obrázku, následují pouze drobné poznámky.

◊ls[#:t "Třetí reakce"]{
    - dekarboxylací se odrhne jeden uhlík, zbyde nám pentóza
}

Celkově vzniknou dvě molekuly NADPH a jedna molekula ribózy.

◊subsection{Průběh neoxidativní části}

◊img["trans-keto.png"]{Transketolázové a trans-aldolázové reakce. (a) popisuje změnu tří pentóz na dvě hexózy a jednu triózu, (b) pak ukazuje, jak se po dvou průbězích reakcí v (a) vytvoří z šesti pentóz pět hexóz.}

◊ls[#:t "Transketolázové a trans-aldolázové reakce"]{
    - probíhá v nich přehazování uhlíků, v konečném důsledku převádějí pentózy zpět na hexózy
    - na začátku vstupuje ribóza-5-fosfát a xylulóza-5-fosfát, která vznikne izomerací z ribózy-5-fosfátu
    - viz obrázek
}

◊title{Syntéza MK a metabolismus tuků}


◊ls{
    - když pro nějakousloučeninu existuje katabolická i anabolická dráha, musejí tyto být odlišné
        - je to termodynamicky nutné a navíc to ulehčí nezávislou a jemnější regulaci
    - proto se syntéza MK a ◊|beta|-oxidace musí lišit
}

◊ls[#:t "Srovnání beta-oxidace a syntézy MK"]{
    - redoxnost
        - ◊|beta|-oxidace je oxidativní proces
        - syntéza MK je reduktivní proces
    - lokalizace
        - ◊|beta|-oxidace běží v ◊abr{mch}
        - syntéza MK běží v reduktivním prostředí v cytoplazmě
    - přenašeče acylu
        - u ◊|beta|-oxidace je jím CoA
        - u syntézy MK je jím speciální protein ◊abr[#:new "acyl carrier protein"]{ACP}
    - přenašeče elektronů
        - ◊|beta|-oxidace je oxidativní => potřebuje akceptor, je jím FAD
        - syntéza MK je reduktivní => potřebuje donor, je jím ◊chem{NADPH + H+}
    - přenášení dvojuhlíkatých jednotek
        - u ◊|beta|-oxidace se o to staral acetyl-CoA
        - u syntézy MK jsou přidávány pomocí malonylu-CoA
}

Přestože je přenašečem acylu ACP, skupina, na kterou je acyl připojen, je stále stejná: ◊strong{fosfopanteteinová} skupina.

◊img["phosphopatethein-acid.png" #:w 300]{Fosfopanteteinová skupina}

◊section{Příprava malonylu-CoA}

O přeměnu z acetyl-CoA na malonyl-CoA se stará enzym ◊abr[#:new "acetyl-CoA-karboxyláza"]{ack}.

◊img["acetyl-coa-trancarboxylase.png" #:w 350]{Reakce acetyl-CoA-karboxylázy}

◊ls[#:t "Acetyl-CoA karboxyláza"]{
    - potřebuje dodání energie v podobě ATP (katalyzuje endorgenický proces)
    - kofaktorem je biotin (vitamín A)
        - umí vázat karboxyl a pomocí pohyblivého raménka jej přenést jinam
    - má dvě enzymatické aktivity
        # biotin-karboxylázová aktivita (vazba ◊chem{COO-} na biotin)
        # trans-karboxylázová aktivita (vazba ◊chem{COO-} z biotinu na acetyl-CoA)
    - kromě svých dvou funkcí ještě plní funkci přenašeče biotinu
}

◊subsection{Regulace ◊abr{ack}}

◊ls{
    - hlavní regulační enzym syntézy MK
    - regulace fosforylací a alostericky, působením lokálních metabolitů
    - v nativní konformaci je ve formě polymeru vytvářejícím dlouhé filamenty
        - při deatkivaci se polymer rozpadá na jednotlivé protomery
}

◊subsubsection{Regulace fosforylací}

◊ls{
    - ◊abr{ack} je inhibována fosforylací (tedy kinázami) a aktivována fosfatázami
}

◊ls[#:t "AMP-aktivovaná kináza"]{
    - funguje jako senzor nízké hladiny energie v buňce
        - koncentrace AMP je vysoká <=> koncentrace ATP je nízká
    - když je aktivní, inhibuje ◊abr{ack}, protože v době nízké hladiny energie nechceme provádět dložitou syntézu MK
}

◊ls[#:t "cAMP-dependentní proteinkináza"]{
    - je aktivována v odpovědi na hormonální reakci glukagonu a adrenalinu
    - funguje něpřímo jako senzor nízké hladiny cukru v krvi
    - když je aktivní, inhibuje ◊abr{ack}, protože chceme využít acetyl-CoA na syntézu ketolátek (energetických náhražek glukózy)
}

◊ls[#:t "Aktivace ack"]{
    - inzulín aktivuje ◊abr{PKA}, která ◊abr{ack} defosforyluje a tím aktivuje
}

◊subsubsection{Regulace lokálními metabolity}

◊ls{
    - zpětnovazební inhibice produktem, palmitoyl-CoA (nejběžnější produkt syntézy MK)
    - aktivace citrátem
        - hodně citrátu => nejspíše i hodně acetyl-CoA => využijeme ho k syntéze MK
}

◊section{Syntéza MK}

◊(add-abr "FAS" "syntáza mastných kyselin")

◊ls{
    - u obratlovců běží na jednom z největších multienzymových komplexů v buňce, syntáze MK (dále jen ◊em{FAS}, fatty-acid-synthase)
        - dimer, každý monomer má sedm různých katalytických aktivit + přenašeč acylu
    - donorem prvních dvou uhlíků je acetyl-CoA, všechny ostatní uhlíky jsou z malonylu
    - nejdelší mastná kyselina, která se takto syntetizuje, je palmitát (C16)
    - je velmi energeticky náročná
        - v sedmi kolech prodlužování nutných k výrobě C16 je investováno 7 ATP a 14 NADPH
}

◊img["fa-synthesis.png"]{Průběh syntézy MK na ◊abr{FAS}}

Viz obrázek, následují pouze drobné poznámky.

◊ls[#:t "Úvodní reakce 1"]{
    - přenos acylu: acetyl-CoA -> ◊abr{ACP}
    - katalyzována acetyl-CoA-ACP-transacyláza (na obrázku MAT)
}

◊ls[#:t "Úvodní reakce 2"]{
    - přenos acylu: ◊abr{ACP} -> kondenzační enzym (na obrázku KS)
}

Předchozí dvě reakce probíhají pouze v prvním cyklu, v druhém by byly nahrazeny přenesením malonylu z CoA na ◊abr{ACP}.

◊ls[#:t "První reakce"]{
    - acetyl + malonyl -> acetoacetyl-ACP (někdy také ◊|beta|-ketobutyryl-ACP)
    - kondenzační reakce
    - acetoacetyl je ketolátka, v dalších reakcích bude potřeba ji přeměnit na lineární řetězec budoucí MK (butyryl)
}

V ◊|beta|-oxidaci jsou dvě oxidace, tedy v rámci syntézy MK budou dvě redukce.

◊ls[#:t "Druhá reakce"]{
    - první z redukčních reakcí (došlo k redukci jedné ze skupin hydroxylu)
    - acetoacetyl-ACP -> D-◊|beta|-hydroxybutyryl-ACP
}

◊ls[#:t "Třetí reakce"]{
    - dehydratace (v ◊|beta|-oxidaci je naopak hydratace)
    - už tam není ani alkoholová skupina, zbyla jen ketoskupina
}

◊ls[#:t "Čtvrtá reakce"]{
    - druhá z redukční reakcí
    - redukuje se hydrogenací, ruší se dvojná vazba
    - vzniká butyryl-ACP
}

Butyryl má poue 4 uhlíky, palmitát je C16, proto musí výše zmíněná reakce proběhnout ještě šestkrát (pokaždé se přidají dva uhlíky). Výsledným produktem (po celkem sedmi cyklech) je ◊strong{palmitoyl-ACP}.

◊ls[#:t "Závěrečná reakce"]{
    - z palmitoyl-ACP je nutné odštěpit ◊abr{ACP}
    - to dělá palmitoyl-thioesteráza
}

◊meta{Syntéza MK je velice důležitá, je prý i u státnic. Good luck to all of us.}

◊ls[#:t "FAS"]{
    - celá reakce je díky ◊abr{FAS} velice efektivní
        - fosfopanteteinové rameno přenáší acylový zbytek mezi jednotlivými reakcemi, takže se jednotlivé reaktatnty nemusí tolik hledat
        - ◊abr{FAS} je dimer a obě podjednotky spolu spolupracují, vyrábějí dvě MK najednou
            - kooperuje jeden ◊abr{ACP} z jedné podjednotky a kondenzační enzym z druhé podjednotky
    - v bakteriích a chloroplastech nejsou podjednotky v dimerech, ale volně v cytoplasmě
}

◊subsection{Přenos důležitých reaktantů na místo reakce}

◊img["transfer-of-acetyl-groups.png"]{Transport acetylu-CoA z ◊abr{mch}}

◊ls[#:t "Acetyl-CoA "]{
    - vyrábí se v ◊abr{mch}, je nutné jej nějak dostat přes membránu
        - trikarboxylový transportní systém
    - výměnou do ◊abr{mch} je nesen malát nebo pyruvát
}

◊ls[#:t "NADPH"]{
    - zdroje: penztózo-fosfátový cyklus a přeměna malátu na pyruvát
}

◊subsection{Elongace a desaturace MK}

Buňka někdy potřebuje delší MK než je palmitát, nebo nenasycené MK.

◊ls[#:t "Elongace"]{
    - běží hlavně v ER, ale zčásti i v ◊abr{mch}
        - v ER je zdrojem dvouhlíkatých podjednotek pro prodlužování také malonyl
        - v ◊abr{mch} je to acetyl-CoA
        - v ER je reakce závislá na syntéze MK, jednotlivé enzymatické aktivity jsou odděleny na různých enzymech
        - v ◊abr{mch} elongace na syntéze závislá není a probíhá spíš jako obrácená ◊|beta|-oxidace
    - přenašečem acylů je na rozdíl od syntézy MK CoA, nikoli ◊abr{ACP}
}

◊img["af-desaturation.png"]{Desaturace MK (přesný mechanismus není třeba umět)}

◊ls[#:t "Desaturace"]{
    - hrozí nebezpečí, že by při tvorbě dvojných vazeb mohly vznikat nebezpečné peroxidy
    - vázané na membránu ER, spojeno s elektrotransportním řetězcem, který zabrání vzniku peroxidu
    - provádí ji ◊strong{desaturázy}
}

◊ls[#:t "Savčí desaturázy"]{
    - savčí desaturázy neumí desaturovat dále než na ◊|Delta|9, tj. maximálně 9 uhlíků od karboxylové skupiny
    - všechny MK, které jsou desaturované dále než na devátém uhlíku musíme přijímat v potravě, jsou tzv. ◊strong{esenciální}
        - linoelová, linolenová
}

Elongace a desaturace jsou často kombinované, napč. při tvorbě ◊em{arachidonátu}.

◊subsection{Syntéza triacylglycerolů}

◊ls{
    - poté, co máme nasyntetizovány MK a máme k dispozici glycerol, může začít syntéza živočiných tuků --- triacylglycerolů
    - glycerol je esterifikován třemi zbytky MK
    - vychází z dihydroxyacetonfosfátu a z glycerolfosfátu
        - dihydroxyacetonfosfát vzniká v glykolýze, ve čtvrté (aldolázové) reakci
    - při hladovění může docházet ke glycerogenezi
        - zkrácená dráha ◊abr{gng} z oxaloacetátu, která končí dihydroxyacetonfosfátem a jeho redukcí na glycerolfosfát
}

◊img["phospatidic-acid-biosynthesis.png" #:w 400]{Biosyntéza kyseliny fosfatidové (není třeba umět detaily)}

◊ls[#:t "Meziprodukty syntézy triacylglycerolů"]{
    - kyselina lyzofosfatidová a kyselina fosfatidová
        - z fosfatidové vychází syntéza živočišných tuků i fosfolipidů
        - lyzofosfatidová umí aktivovat malé GTPázy nebo kinázy z rodiny SAR
}

◊img["phosphatidic-acid-pathways.png" #:w 300]{Přeměna kyseliny fosfatidové na triacylglyceroly a fosfolipidy}

◊section{Regulace metabolismu tuků}

◊ls{
    - syntéza MK je regulována na transkripční úrovni
    - při syntéze MK nechceme mít spuštěnou i ◊|beta|-oxidaci, protože by se obě reakce navzájem vyrušily
        - existence dvou stavů, buňka zájem buď na syntéze, nebo na odbourávání
}

◊img["well-fed-liver.png"]{Játra ve stavu sytosti (lipogenní). TAG označují triacylglyceroly.}

◊ls[#:t "Stav sytosti"]{
    - tento stav je v játrech stimulován inzulínem, buňka chce provádět syntézu
        - inzulín stimuluje i expresi ◊abr{FAS}, naopak nenasycené MK tuto expresi inhibují
    - když je aktivní ◊abr{ack}, vzniká malonyl-CoA
        - ten je nejen prekurzorem pro reakci ◊abr{FAS}, ale také inhibuje karnitin-palmitoyl-transferázu I, což je přenašeč MK v ◊abr{mch}
        - ◊|beta|-oxidace neprobíhá, protože se do ◊abr{mch} MK nedostanou
}

◊img["hungry-liver.png"]{Hladovějící játra (glukogenní)}

◊ls[#:t "Stav hladu"]{
    - tento stav je v játrech stimulován glukagonem a adrenalinem, které aktivuje ◊abr{cAMP}-dependentní proteinkinázu
    - v tomto stavu je ◊abr{ack}, která svou činností nepřímo inhibuje ◊|beta|-oxidaci, sama inhibována pomocí AMP
        - pokles malonyl-CoA -> konec inhibice karnitin-palmitoyl-transferázy I -> přenos MK do ◊abr{mch} -> spuštění ◊|beta|-oxidace -> tvorba acetyl-CoA -> KC -> doplnění ATP
}

◊box["Vliv inzulínu a glukagonu"]{
    Hlavním regulačním mechanismem, který řídí syntézu a degradaci MK, je tedy ◊strong{poměr mezi inzulínem a glukagonem}.

    ◊img["insulin-effect.png"]{Vliv inzulínu na játra a tukové buňky}
    ◊img["glucagon-effect.png"]{Vliv glukagonu na játra a tukové buňky}
}

◊(add-abr "AMPK" "AMP-aktivovaná proteinkináza")

◊ls[#:t "Regulace ukládání tuků v tukových buňkách"]{
    - mechanismus ukládání žvočišných tuků
        # partikule tuku se z jater dostanou do krve
        # zachytí je ◊strong{lipoproteinlipáza} na membráně tukových buněk
        # odštěpí z partikulí volné MK
        # přemění MK na živočišné tuky
    - pokud je v tukových buňkách tímto způsobem ukládáno hodně tuků, začnou uvolňovat ◊strong{leptin}
        - hlavní receptory pro leptin jsou v hypotalamu, který poté různými cestami signalizuje člověku, že je sytý
            - patologie leptinu vedou často k obezitě
        - leptin také aktivuje AMP-aktivovanou proteinkinázu (dále jen ◊em{AMPK}), která poté v jaterních a svalových buňkách inhibuje ◊abr{FAS} a podporuje ◊|beta|-oxidaci
}

◊ls[#:t "Lipoproteinlipáza"]{
    - je schopná v tukových buňkách odbourávat tuky
    - reaguje na fosforylaci ◊abr{PKA} (čili vlastně nepřímo na hormonální signály)
        - snížená hladina glukózy => aktivace, MK poté slouží jako zdroj energie při nízké glykémii
        - při dlouhodobě zvýšené koncentraci glukózy je naopak rovnováha posunutá k tvorbě živočišných tuků
}

◊section{Cholesterol}

◊ls{
    - komplexní steroidní složka
    - vzniká z acetátu (potažmo z acetyl-CoA), všechny uhlíky cholesterolu mají původ v acetyl-CoA
    - při syntéze vzniká spousta biologicky aktivních látek
        - koenzym Q10, který je aktivní např. v OF
        - dolichol, přenáší cukerné zbytky při syntéze glykoproteinu
        - geranyl, izoprenodní látka, která posttranslačně modifikuje proteiny
}

◊ls[#:t "Užitečnost cholesterolu"]{
    - může ucpávat cévy, ale je pro organismus zásadně důležitý
    - zvyšuje stabilitu biologických membrán
    - při jeho syntéze vzniká spousta důležitých látek
    - mnoho důležitých látek vzinká i přímo z něj
        - např. steroidní hormony
            - kortikoidy, androgeny, mineralokortikoidy, estrogeny (progesteron, testosteron, estradiol, kortizol, aldosterol)
    - také z něj vychází syntéza žlučových kyselin, které jsou nezbytné pro účinné trávení tuků
        - kyselina glykocholová, taurocholová, cholová
        - výhradně v této formě je cholesterol vylučován z těla (jinak se skoro nevylučuje)
}

◊subsection{Syntéza cholesterolu}

◊img["cholesterol-synthesis.png" #:w 400]{Syntéza cholesterolu v hrubých obrysech}

◊subsubsection{První fáze}

◊img["chiol-first-reaction.png" #:w 350]{První fáze}

◊ls[#:t "První fáze"]{
    - acetyl-CoA -> ketolátka hydroxymetylgutaryl-CoA -> mevalonát
    - v druhé polovině figuruje ◊strong{HMG-CoA-reduktáza}
    - přeměna HMG-CoA je hlavní redukční reakcí celé syntézy
    - probíhá s pomocí dvou molekul NADPH
}

◊ls[#:t "Regulace HMG-CoA-reduktázy"]{
    - inhibováno fosforylací, a to buďto ◊abr{PKA} nebo ◊abr{AMPK}
    - farmaka inhibující tvorbu cholesterolu v těle cílí právě na tuto reakci
}

◊subsubsection{Druhá fáze}

◊img["chol-second-reaction.png" #:w 350]{Druhá fáze. Je třeba znát pouze konečné produkty.}

◊ls[#:t "Druhá fáze"]{
    - mevalonát se pak mění na izopentenyl pyrofosfát a 5-pyrofosfomevalonát (též dimetylalyl pyrofosfát), což jsou obojí 5C látky s izoprenovou skupinou
}

Vzniknou tedy dvě 5C látky, my chceme však získat 30C cholesterol. Musíme je tedy nějak prodloužit.

◊subsubsection{Třetí fáze}

◊img["chol-third.png" #:w 450]{Třetí fáze}

◊ls[#:t "Třetí fáze"]{
    - ve třetí fázi se spoují produkty druhé fáze, tak, abychom získali 30C skvalen
        # izopentenyl pyrofosfát [◊strong{5}] + 5-pyrofosfomevalonát [◊strong{5}] = geranylfosfát [◊strong{10}]
        # geranylfosfát [◊strong{10}] + izopentenyl pyrofosfát [◊strong{5}] = farnesyl pyrofosfát [◊strong{15}]
        # ◊${2 \times} farnesyl pyrofosfát [◊strong{15}] = skvalen [◊strong{30}]
    - pyrofosfáty se odštěpují a energeticky pohánějí reakci
        - při spojení dvou farnesylů se odštěpí ◊chem{2PP_i}, a při tom vždy vznikne reaktivní karbokationt
}

◊subsubsection{Čtvrtá fáze}

◊img["chol-fourth.png"]{Čtvrtá fáze. Detaily opět není třeba znát.}

◊ls[#:t "Čtvrtá fáze"]{
    - skvalen se zacyklí na lanosterol
    - lanosterol se poté v průběhu další devatenácti reakcí přetvoří na cholesterol (◊em{multistep} na obrázku)
        - účastní se toho enzymy asociované s membránou ER
        - reakce jsou často oxidacemi, katalýzy se účastní cytochromy z rodiny P450
    - tato syntéza je velmi náročná na NADPH
}

◊subsection{Transport cholesterolu do buňky a jeho regulace}

◊img["chol-transport.png"]{Transport cholesterolu do buňky (ACAT je acyl-CoA-cholesterol acyltransferáza)}

◊(add-abr "LDL" "low-density lipoprotein")

◊ls[#:t "Transport cholesterolu do buňky"]{
    - cholesterol se dovnitř dostává v podobě LDL (low-density lipoprotein) partikulí
    - buňka tedy musí mít ◊abr{LDL} receptory
        - vazba cholesterolu -> opláštěný váček -> endozom -> recyklace (viz obrázek)
    - choloesterol v (jaterních) buňkách je zčásti esterifikován a uložen a zčásti se z něj tvoří cholesterolové kapénky
        - velké množství těhcto kapének vede k snížení syntézy ◊abr{LDL} receptoru a snížení syntézy HMG-CoA reduktázy
}

Asi 2/3 cholesterolu, který máme v těle, si syntetizujeme a 1/3 přijímáme v potravě. Z těla se dostává výhradně v podobě žluči, žlučových kyselin. Jeho vylučování může podnítit příjem rostlinných fytosterolů.

◊(add-abr "VLDL" "very low-density lipoprotein")

◊ls[#:t "Komunikace mezi játerní tkání a periférií"]{
    # normální stav
        - játra přijímají hodně ◊abr{LDL}, pak je uvolnují do krve jako VLDL (very low-density lipoprotein) a ony se do nich vrací zase jako ◊abr{LDL}
    # familiární hypercholesterolémie
        - defekt při syntéze ◊abr{LDL} receptorů
        - ◊abr{LDL} receptory se špatně vstřebávají a zvyšuje se hladina těch "špatných" cholesterolů v krvi
    # dieta s vysokým obsahem cholesterolu
        - receptory jsou ze začátku v pořádku, ale pak dojde k adaptacím, sníží se syntéza HMG-CoA reduktázy
        - jaterní tkáň nestíhá cholesterol vstřebávat a zpracovávat a opět to vede k poruchám
        - naopak fyzická aktivita vede ke snížení ◊abr{LDL} v oběhu a zvýšení exprese HGM-CoA reduktázy
}

◊section{Ikosanoidy}

◊ls{
    - někdy také eikosanoidy
    - mají dvacet uhlíků
    - prostaglandiny, prostacykliny, tromboxany, leukotrieny, hydro-peroxy-ikosatetraenové kyseliny
    - jsou v mnohém podobné hormonům, ale jedná se o lokální mediátory
        - působí ve velmi nízkých koncentracích, nižších než hormony
        - signalizují přes G proteiny a druhé posly, jako je ◊abr{cAMP}
        - stejně jako hormony ovlivňují řadu biologických dějů
            - regulace krevního tlaku, bolest, reprodukční funkce, cyklus spánku a bdění, srážení krve a vlastně skoro jakýkoliv fyziologický proces
    - jsou odvozeny od esenciálních mastných kyselin, většinu jsou při jejich příjmu syntetizovány, nebo mohou být přímo přijímány v potravě
        - přijmeme esenciální MK, ta se zabuduje do fosfolipidu a z toho je potom uvolňován ikosanoid
}

◊ls[#:t "Názvosloví"]{
    - jak už bylo zmíněno v kapitole o MK, MK se někdy značí dvěma čísly (tzv. ◊strong{skóre})
        - ◊code{[# uhlíků]:[# dvojných vazeb]}
        - např. 18:2 je kyselina linoelová
    - označení ◊|omega|◊${k}
        - dvojná vazba nejvzdáleneší od karboxylu je ◊${k} uhlíků od ◊em{konce} řetězce
        - podobné jako ◊|Delta|◊${k}, což značilo, že dvojná vazba nejvzdáleněší od karboxylo je ◊${k} uhlíků od ◊em{začátku} řetězce
    - např. kyselina arachidonová ◊|omega|6 (20:4), kyselina eikosapentaenolová ◊|omega|3 (20:4)
}

◊ls[#:t "Účinky"]{
    - mohou často způsobovat zánětlivé reakce
        - na tomto stojí princip kortikoidů: aktivují syntézu lipokortinu -> inhibice A-2 -> inhibice syntézy ikosanoidů
            - kortikoidy ale bohužel inhibují i ikosanoidy, které jsou pro tělo dobré
}

◊subsection{Tvorba a účinky ikosanoidů}

◊ls{
    - ikosanoidy se mohou uvolňovat z fosfolipidů
        - např. fosfatidylinositol
    - fosfolipáza, která ikosanoidy uvolňuje, se jmenuje ◊strong{A-2} (odštěpuje druhý acyl)
        - po její aktivaci se uvolní arachidonát a tím může být zahájena syntéza ikosanoidů
        - je třeba součástí hadích jedů --- v odpovědi na uštknutí se masivně uvolňují ikosanoidy v organismu.
    - vznikají v ◊strong{cyklizující} (prostaglandiny, PG, a prostacykliny) a ◊strong{linearizující} dráze (leukotrieny)
}

◊img["phosphatidylinositol.png" #:w 200]{Fosfatidylinositol, s navázanou kyselinou arachidonovou a stearovou}

Tvorba ikosanoidů je podobně jako u hormonů spřažena s druhými posly, mohou být aktivovány např. v odpovědi na adrenalin.

◊ls[#:t "Účinky leuktrienů"]{
    - hrají roli v imunitní odpovědi
        - chemotaxe (přivolávání) leukocytů
    - hrají roli také při alergických reakcích a anafylaktickém šoku
}

◊subsection{Cyklizující dráha}

◊(add-abr "PGH2" "prostaglandin H2")
◊(add-abr "COX-1" "cyklooxigenáza-1, prostaglandin-H2 syntáza 1")

◊img["pgs.png" #:w 350]{Příklady prostaglandinů}

◊ls[#:t "Prostaglandiny"]{
    - odvozeny od teoretické kyseliny prostaglandinové
    - označují se písmenem a číslem
        - písmeno: typ organického cyklu, který se vyskytuje na konci kyseliny
        - číslo: počet dvojných vazeb
    - malé strukturní změny znamenají velmi odlišné biologické účinky
}

◊img["cyclic-pathway.png" #:w 400]{Cyklická dráha}

◊ls[#:t "Reakce prostaglandin-H2 syntázy"]{
    - z arachidonátu je přeměňován prostaglandin-H2 syntázou na ◊abr{PGH2}
    - z ◊abr{PGH2} mohou vzniknout další prostaglandiny a prostacykliny¨
    - toto je klíčová reakce
}

◊ls[#:t "Prostaglandin-endoperoxid syntáza (PTGS)"]{
    - oficiální název enzymu z předchozí reakce
    - má dvě aktivity, cyklooxigenázovou a endoperoxidázovou
        - zajímá nás hlavně ta první, cyklooxigenázová, proto se tomuto enzymu častěji říká ◊strong{cyklooxygenáza} (COX)
    - má dvě formy (izozymy)
        - COX-1, nebo též PGH syntáza 1
            - konstitutivní, stabilně existuje v těle
        - COX-2, nebo též PGH syntáza 2
            - inducibilní, tato forma se vyskytuje jen při patologických stavech, jako je např. revmatoidní artritida (chronické záněty)
    - běžné protizánětlivé látky (např. aspirin) blokují ◊abr{COX-1}, brání syntéze ◊abr{PGH2}
}

◊img["proglandoids.png"]{Příklady prostanoidů vznikajících z ◊abr{PGH2}}

◊definitions{
    ◊term["Prostanoidy"]{
        Podskupina ikosanoidů, která zahrnuje prostaglandiny, tromboxany a prostacykliny.
    }
}

◊box["Účinky prostanoidů"]{
    ◊ls{
        - ◊chem{TXA2}
            - agregace trombocytů
            - konratkce hladkého svalstva cév
        - ◊chem{PGI2}, ◊chem{PGI3}
            - antiagregační účinek
            - stimulace relaxace hladkého svalstva
            - zvýšení intenzity a trvání bolesti
        - ◊chem{PGE2}
            - inhibice kontrakce hladkého svalstva
            - vasodilatace cév a zvýšení permeability cév
            - inhibice sekrece ◊chem{HCl}
            - stimulace sekrece mucinu
            - zvýšení teploty
            - zvýšení intenzity a trvání bolesti
        - ◊chem{PGD2}
            - navození spánku
            - kontrakce bronchiálního svalstva
        - ◊chem{PGF2}
            - kontrakce hladkého svalstva
            - zvýšení teploty
    }
}

◊img["aspirin.png" #:w 400]{Aspirin, ibuprofen a naxprofen}

◊ls[#:t "Aspirin"]{
    - acetylsalicylová kyselina
    - inaktivuje ◊abr{COX-1} tím, že acyluje jeden serinový zbytek v katalytickém místě na syntáze
    - doporučuje se brát u starších lidí kvůli prevenci mozkové příhody
        - brání tvorbě ◊abr{PGH2} a tím i prostacyklinu
}

◊section{Glycerolipidy a glykolipidy}

◊definitions{
    ◊term["Glycerolipidy"]{
        Lipidy odvozené od glycerolu.
    }

    ◊term["Sfingolipidy"]{
        Lipidy odvozené od sfingosinu, 18C alkoholu, jehož první tři uhlíky hrají ve stavbě lipidů roli glycerolu.
    }

    ◊term["Fosfolipidy"]{
        Podtřída glycerolipidů, mají na glycerolu navázán i fosfor.
    }
}

◊img["phospholipids.png" #:w 200]{Obecná struktura fosfolipidu}

◊definitions{
    ◊term["Glykolipidy"]{
        Mají v molekule cukernou složku.
    }
}

◊img["membrane-lipids.png"]{Bežné typy zásobních a membránových lipidů}

◊subsection{Fosfolipidy}

◊ls[#:t "Fosfolipidy"]{
    - jsou syntetizovány na membráně ER, přenášeny na vnitřní stranu cytoplazmatické membrány a pomocí ◊strong{flipáz} přenášeny na její vnější stranu
    - funkce
        - kotvení proteinů v membráně (GPI kotva)
        - strukturní složka membrán, součást lipoproteinů
        - prekurzory spousty věcí, např. inozytoltrifosfátů, triacylglycerolů a druhých poslů
}

◊ls[#:t "Alkylacylglycerolfosfolipidy a plasmalogeny"]{
    - z plasmalogenů vzniká faktor, který aktivuje krevní destičky
    - jsou hodně v nervové a svalové tkáni, podílí se na zvýšené tekutosti membrán
}

◊subsubsection{Syntéza fosfolipidů}

◊ls{
    - vždycky musí docházet k energetickému nabití jednoho z prekurzorů
    - existují v zásadě tři způsoby vzniku
        # fosfátový ester je nabitý pomocí CDP
            - vzniká fosfatidylethanolamin, neboli fosfatidylcholin
        # záměna fosfátového esteru
            - fosfatydylethanolamin + serin -> fosfatidylserin
        # nabití esteru pomocí CDP-diacylglycerolu
}

◊note{
    ◊ls[#:t "Fosfatidylcholin"]{
        - je důležité přijímat v potravě, podílí se na vodivosti nervových buněk
            - může reagovat s ceramidem za vzniku sfingomyelinu, který je důležitý pro tvorbu myelinové pochvy
        - alternativně může být syntetizován z fosfoetaloaminu pomocí trimethylace
    }

    ◊ls[#:t "Fosfatidylinositol"]{
        - důležitá signální molekula
        - může být štěpena na druhé posly (IP3 a DAG)
        - může z něj vznikat difosfatidylglycerol neboli kardiolipin
            - je ve vnitřní membráně mitochondrií a je důležitý pro její správné fungování
            - je ho hodně v srdečním svalu
            - je nezbytný pro dýchací řetězec
    }
}

◊subsection{Sfingolipidy}

◊img["sphingolipids.png" #:w 500]{Sfingolipidy}

◊ls[#:t "Glykosfingolipidy"]{
    - jsou odvozeny od ceramidu
        - ceramid je sfingolipid, který má přes esterovou vazbu připojen ke sfingosinu pouze vodík
    - jejich součástí jsou cukerné zbytky; podle toho, jaké konkrétně, se pak sfingolipidy dále dělí
        - cereprosidy, s jednoduchým cukrem (glukóza, galaktóza)
        - sulfatidy (cukr je sulfatován)
        - globosidy (mají více cukerných podjednotek)
        - gangliosidy (více cukerných podjednotek a ještě kyselina sialová)
    - nacházejí se v nervové tkáni
        - nikdo nevěděl, co dělají, byli proto nazvány podle mytické sfingy
        - glykosfingolipázy (poruchy v glykosfingolipidech) mají často za následek problémy s nervovým systémem, bývají letální
}

◊img["glycerolipid-vs-sphingolipid.png" #:w 300]{Srovnání struktury svou membránových lipidů, fosfatidilcholinu (glycerofosfolipidu) a sfingomyelinu (glykosfingolipidu). Jde vidět, že jejich struktura fyzikální parametry jsou velice podobné, přestože mají chemicky jiný původ.}
