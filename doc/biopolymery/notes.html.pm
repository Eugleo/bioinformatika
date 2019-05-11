#lang pollen

◊define-meta[title]{Struktura a vlastnosti informačních biopolymerů}
◊define-meta[header]{zápisy}
◊(define-meta toc #t)

◊title{Struktura DNA}

◊todo{Doplnit informace o endo a exo konfiguracích, syn a antiklinální, levo a pravotočivé, Hoogsteenovo párování atd.}

◊todo{Syn a anti konfigurace jsou na proteopedii. Jsou tam i další fajn věci.}

◊title{Polymorfismus DNA}

◊todo{Eeeh, co je to ten polymorfismus?}

◊ls[#:t "Vývoj znalostí o struktuře DNA"]{
    - první pokusy vycházely z difrakcí rentgenového záření na částečně uspořádaných vláknech dsDNA
        - zjistilo se, že difrakce jsou někdy velice odlišné - tím se pojmenovaly konformace A--Z
    - později se zkoumal rozptyl na krystalech
        - z genomové DNA nešlo udělat krystal -> krystalizovaly se oligonukleotidy, na které byla DNA rozlámaná ultrazvukem
    - na těchto krystalech získáváme informace ještě podrobnější, než na vláknech
        - objev sekvenčního polymorfismu (konkrétní páry bazí si vyžadují odchylky od ideálního strukturního modelu)
}

Je ale třeba si uvědomit, že pokud využíváme k detekci anomálií protilátky, můžeme se nám stát, že danou strukturu naší protilátkou stabilizujeme v jedné konkrétní konformaci, i když přirozeně by ji často měnila. Protilátky tak nemusí vždy odrážet realitu.

◊box["Úhly a reakce"]{
    Řekněme, že pozorujeme interakce dvou molekul v prostoru a vždy měříme úhly, pod kterými jsou spoliu ve styku, z čehož se poté snažíme vyvodit, jestli spolu reagují nějak specificky. Jaké úhly pro nás v tomto případě budou zajímavé?

    Jendoduchým pozorováním lze dojít k závěru, že při náhodném umístění a orientaci molekul bude nejběžnější úhel mezi nimi 90◊|deg|, a obecně celé rozložení úhlů ude mít tvar sinusoidy.  Nejvzácnější bude tedy rovnoběžná orientace.

    Pokud se tedy naše naměřené úhly budou významně lišit od pravidelné sinusoidy, má cenu se tím dále zabývat.
}

◊section{Konformační polymorfismus}

Jedna molekula DNA bude mít v různých prostředích různou konformaci. Konformací existuje celá řada (A--Z, s různými indexy).

◊ls[#:t "Faktory ovlivňující konformaci"]{
    - humidita
        - 100%: B konformace
        - s ubývajícím množstvím vody -> DNA-A -> DNA-C
    - přítomnost iontů
        - více ◊chem{Mg^{2+}} znamená jednodušší metylaci C5' a supercoiling, což způsobuje Z konformaci
    - zastoupení bazí
        - poly-A úseky, poly-AT úseky, atp., mají roznídlné vlastnosti
}

◊todo{Přepsat tabulku srovnání místo obrázku slidu. + Jeden pár bazí má asi 660g/mol = 660Da + Hoogsteen a G-kvadruplex?
◊slide[38 #:s 4]
Někdy se váží tři strandy DNA, dvě běžně v B konformaci, třetí CTCT (polypurinová část) úsek pomocí hoogstedova párování (<- H-DNA), puriny synklinální. Podobně se může vmezeřit i RNA.
}

◊slide[20 22 24 #:s 4] Existují tři hlavní rodiny konformací: ◊strong{A}, ◊strong{B} a ◊strong{Z}.

◊subsection{Konformace B}

◊ls{
    - nejběžnější
    - pravotočivá spirálovitá struktura
        - spirálovitá proto, že jednotlivé báze vlastně nechtějí být přesně nad sebou
    - patra jsou vzdálená 330~350pm, působí mezi nimi stacking interakce
    - fosfáty vzdálené kolem 9◊angs
    - C1' uhlíky v rámci patra jsou v každém patře skoro stejně daleko od sebe
    - ribóza je C2' endo (C2' je na stejnou stranu jako C5')
    - rozlišení velkého a malého žlábku
        - důležité pro vazby molekul
        - mnoho proteinů reagujících s DNA funguje jako homodimer reagují s DNA na dvou místech
            - tyto proteiny kromě toho bývají bazické
        - do malého žlábku se váže např. molekula DAPI, která se používá k barvení ◊slide[9 #:s 4 #:inline #t]
    - uprostřed helixu není žádné místo
}

◊slide[6 7 #:s 4]
◊box["Malý vs velký žlábek"]{
    Malý a velký žlábek lze rozlišit i na jiných konformacích DNA, kde zpravidla nejdou poznat tak dobře. Způsob jejich určení je naštěstí přesně popsán.
    ◊ls{
        # najdeme průsečík osy helixu a nějakého patra DNA
        # vedeme z tohoto bodu dvě polopřímky, každou do jednoho z C1' na obou bazích
        # rozdělíme rovinu na dvě části: tam, kde je úhel menší než 180◊deg je malý žlábek, na opačné straně velký žlábek ◊slide[5 #:s 4 #:inline #t]
    }
}

◊meta{Byly požadovány znalosti jednotlivých atomů, které se nacházejí ve velkém/malém žlábku.}

◊subsection{Konformace A}

◊ls{
    - pravotočivá spirálovitá struktura
    - ribóza je  C2' exo, C3' endo
    - uprostřed helixu je dutina, která bývá vyplněna vodou
        - někdy se stane, že dvě báze spolu interagují prostřednictvím molekuly vody
}

Podobnou konformaci zaujímá i heterokomlex DNA+RNA, protože OH skupina cukru z RNA musí čnít ven z helixu, tedy C2' musí být exo.

◊subsection{Konformace Z}

◊ls{
    - levotočivá spirálovitá struktura
    - kostra uspořádaná zig-zag
        - v sekvenci se střídají puriny a pyrimidiny
            - puriny jsou synklinální, jejich riboza je tedy přetočená a kostra vypadá zig-zag
    - patra jsou si strukturou podobná ob jedno (v B jsou si podobná všechna), repetitivní je dvojice párů bazí nad sebou
    - některé modifikace bazí (například methylace na C5') Z konformaci stabilizují (methyl se dobře schová mezi dvě patra)
    - převládaají báze G a C
}

◊section{Sekvenční polymorfismus}

◊slide[43 46 47 49 #:s 4] Báze v rámci patra nejsou v rovině, ale zaujímají tvar asymetrické vrtule. Stejně tak jednotlivá patra spolu nejsou rovnoběžná, ale různě nepravidelně natočená, protože si navzájem přkážejí.

◊slide[52 54 #:s 4] Natočení a posun bazí je různý u různých konformací DNA, a závisí také na místním nukleotidovém složení. Zajímavě se například chovají poly-AT regiony. ◊slide[10 #:s 5 #:inline #t]

◊slide[16 17 #:s 4] Se sekvencí se nemění pouze posun bazí, ale i možné torzní úhly. Na slidu jsou znázorněny torzní úhly dvou polyadenylylových úseků s různými majoritními nukleotidy.

◊section{Dynamický polymorfismus}

◊slide[56 #:s 4]
DNA je neustále v pohybu. Jak moc a jakým způsobem záleží především na konkrétní sekvenci.

◊ls{
    - nedá se sledovat na krystalech, musíme použít NMR nebo například fluorescenci
    - jedná se vlastně o časově a prostorově lokální denaturaci
    - pokud například DNA-B přechází v DNA-Z, jedna báze se může vyklopit z řetězce (flipování)
        - často proto, že reaguje s nějakým enzymem
}

◊ls[#:t "Denaturace"]{
    - rozpad helikální struktury DNA, většinou způsobený teplem
    - DNA se rozplétá od konců, nebo v sousedství utajených přerušení
    - poly-AT úseky tají první, protože AT jsou spojeny jen dvěma vodíkovými můstky
    - pokud k renaturaci dojde příliš rychle (např. prudkým ochlazením), ne všechny báze musí nutně skončit se svou komplentární dvojicí
}

◊section{Ohyby a zalomení}

K ohybům dochází v DNA hlavně na základě sekvenčního polymorfismu a na hranici dvou konformací. Naopak k zalomení především v důsledku mechanického namáhání nebo při vazbě na zakřivený povrch.

◊slide[66 #:s 4]
◊ls[#:t "Ohyb vlákna"]{
    - způsoben AT bohatými oblastmi
    - A a T spolu mohou reagovat napříč patry, čímž se DNA ohne
    - DNA se částečně rozplete a sekvence jsou dobře dostupné
        - => často v promotorových nebo regulačních oblastech
}

◊section{Další konformační anomálie}

◊slide[69 #:s 4]
◊ls{
    - lokální úseky Z-DNA, H-DNA, A-DNA, 4s DNA (uvnitř molekuly B-DNA)
    - při výskytu palindromu, kde je jeden úsek DNA komplementární s nadcházejícícm úsekem na stejném vlákně, někdy na DNA vznikne kříž
    - kromě kříže vlásenky, bubliny
    - utajená přerušení: jedno vlákno je na kostře přerušené
        - nejsou problém, vlákna u sebe drží velkou silou
        - začíná u nich denaturace
    - gapy: místa, kde chybí nějaká báze
    - zlom s adhezivními (lepivými) přesahujícími konci: vlákno se lepí na vlákno podobného tvaru, nezáleží ale na jejich původu; adhezivní konce umožňují vytvářet genetické změny v DNA, můžeme je míchat
}

◊ls[#:t "Způsoby studia strukturních anomálií"]{
    - můžeme využít hypersenzitivity anomálií
        - nukleázy (S1, mikrokokální)
        - chemické modifikace (glyoxal, chloracetaldehyd)
    - můžeme detekovat chemicky značené anomlie
        -  elektronová mikroskopie
        - denaturační křivky
        - elektroforéza
        - sekvenování
        - vazba protilátek
}

◊section{Vsuvka: konformace RNA}

◊slide[2 #:s 5]
◊ls[#:t "RNA vlásenka"]{
    - často se objevují nezvyklá párování
        - U + fosfátová skupina
        - G+U, U+U a podobně
            - někdy stabilizováno přes molekulu vody
        - G někdy tvoří vodíkový můstek s ribozou
    - uracyl a cytosin na špičce s ničím nepárují
        - cytosin stacking interaguje s párem pod sebou
        - uracyl ční do prostoru (nejspíš málo konzervovaná pozice)
    - na špičce vlásenky často UUCG a podobné
}

◊ls[#:t "Bazická hydrolýza RNA"]{
    # ve vysokém pH (silně zásadité) dojde k deprotonizaci ◊chem{OH} skupiny na ribóze
    # kyslík z ribózy může nukleofilně reagovat s fosfátem z RNA kostry
    # fosfát je en čtyřvazebný a tak jednu ze stávajících vazeb přeruší
    # RNA se rozpadne
    # fosfát posléze zůstane jen na C2' nebo C3'
}

Podobně fungují i enzymy štěpící RNA, je proto relativně složité je zastavit (např. u DNA stačí jen odebrat z roztoku kovy, které enzymy potřebují k rozložení DNA).

◊slide[77 #:s 4] V ribozomálním RNA jsou někdy celé sítě různých interakcí mezi nukleotidy.

◊slide[4 #:s 5] V RNA je možných mnoho různých druhů párování.

◊section{Topologie DNA}

DNA má strukturu dihelixu, viz výše. Topologie DNA se zabývá tím, jaký tvar tento dihelix zaujme v prostoru.

◊definitions{
    ◊term["supercoil"]{
        Supercoil (neboli ◊em{nadobrátky}) je termín, který popisuje přetočení nebo podtočení dihelixu DNA, které je vyústěním nějakého vnitřního tlaku, který na vlákna působí. Supercoil vzniká například v bakteriálním plazmidu. ◊slide[14 #:s 5 #:inline #t] DNA v přírodě se většinou vyskytuje právě v této formě.

        Supercoilu se říká také ◊em{superhelix}, nadobrátkám někdy terciární vinutí (běžné Watson-Crickovské je sekundární).
        ◊img["supercoil.jpg"]{Znázornění nadobrátek}
    }

    ◊term["relaxovaná pozice"]{
        DNA je v relaxované pozici, když nemá žádné nadobrátky. Relaxovaná cyklická DNA (například plazmid) se označuje jako CO forma ()
    }

    ◊term["twisting number (T)"]{
        Udává počet překřížení dvou vláken DNA, která jsou spolu v dihelixu. DNA je před spočítáním ◊${T} nejprve vyrovnat do plochy. Znaménko udává, jestli je helix pravotočivý (◊${+}) nebo levotočivý (◊${-}).

        V běžných podmínkách u lineárních B-DNA bývá ◊${T = 10} na každých 106bp, protože B-DNA má jednu otočku na přibližně 10.6 párů bazí. ◊img["twist_and_writhe.png"]{Znázornění nadobrátek}
    }

    ◊term["writhe number (W)"]{
        Udává počet nadobrátek, v přírodě (u bakteriálních plazmidů) bývá ◊${W = 1} na 200bp. Nadobrátky mohou vyústit ve dvojí typ topologie: DNA zaujme buďto toroidální tvar, nebo plektonemní tvar. Plektonemnímu tvaru se někdy říká ◊em{dvojitá nadšroubovice}.

        ◊box["Poznámka"]{
            Toroid je nějaký tvar, který rotuje kolem nějaké osy. Plektonem je v překladu "zkroucené vlákno" a vypadá spíše jako řetěz. ◊img["toroid_plectoneme.png"]{Srovnání toroidu a plektonemy}
        }

        Znaménko udává, jestli je superhelix pravotočivý toroid (◊${+}) nebo levotočivý toroid (◊${-}). Pravotočivý toroid je matematicky totožný s levotočivým plektonemem a naopak, tedy levotočivý plektonem má znaménko (◊${+}).
    }

    ◊term["linking number (L, Lk)"]{
        Shrnuje předchozí dvě čísla, je to hlavní způsob, jakým se popsiuje topologie DNA.
        ◊$${L = T + W}
        Pokud se budeme bavit o plazmidu, můžeme říct, že po úvodním spojení konců DNA, kde vznikne cyklická DNA, je ◊${L} konstantní. Úbytek otáček v helixu tedy bude znamenat příbytek nadotáček, a naopak.

    }
}

◊slide[29 #:s 5] Supercoilování, nebo obecně změna ◊${T} a ◊${W} čísel, může někdy způsobit (nebo alespoň podpořit) změnu konformace DNA, více viz slide.

◊subsection{Supercoil}

DNA bývá velice dlouhé, buňka ho chce samozřejmě vměstnat na co nejmenší plochu --- s tou podmínkou, že bude stále možné čtení DNA kódu, případně replikace. A právě tento problém supercoil řeší. Supercoil se mimo to významně podílí i na procesech replikace a transkripce, protože usnadňuje přístup proteinů k sekvenci DNA (viz níže).

◊todo{Doplnit z Albertse organizaci DNA v eukaryotické buňce (histony, nukelosomy) a přidat nějaký obrázek.}

Velikost supercoilu (počet nadobrátek) se měří:
◊align${
    \Delta L &= L - L_0 \\
    \sigma &= \frac{\Delta L}{L_0},
}
kde ◊${L_0} je ◊${L} relaxované DNA. ◊${\sigma} se nazývá superhelikální hustota a představuje počet přidaných/ubraných nadotáček vzhledem k původnímu počtu nadotáček.

Víme, že DNA je ve své nejčastější konformaci pravotočivé. Nabízí se otázka: jak je to se superhelixem u bakterií?

◊subsubsection{Levotočivost a pravotočivost}

Teoreticky by mělo být jedno, kterou z těchto dvou forem supercoil zaujme: obě budou kompaktní, což je jeho hlavní účel. V praxi se to ale liší.
◊ls{
    - pravotočivý supercoil utahuje pravotočivou DNA ještě více, než je utažená běžně
        - výslednou DNA prakticky není možno rozplést
    - levotočivý supercoil naopak DNA trochu povolí
        - DNA se supercoilem sice zkompaktní, ale obě vláknou jsou kolem sebe namotaná volněji, než předtím
        - dobře dostupné pro enzymy, proteiny atd.
}

Zdá se, že je výhodnější ◊strong{levotočivá} forma. To bylo potvrzeno následujícím experimentem:

◊slide[18 #:s 5]
◊ls[#:t "Postup experimentu"]{
    # v roztoku zvyšujeme koncentraci ethydium bromidu (EtBr), který zmenšuje počet otáček (◊${T} číslo)
    # mizí nadobrátky, což pozorujeme při sedimentaci
        - čím více relaxovaná (=> objemná) DNA je, tím pomaleji sedimentuje
    # s dalším zvyšováním koncentrace EtBr dostaneme DNA až do relaxované formy, kde ◊${W = 0}
    # s dalším zvyšováním najednou nadobrátky opět přibývají
        - z toho plyne, že ◊${W} bylo nejprve záporné, pak přešlo přes 0 a nyní je kladné => DNA je tedy běžně v levotočivé formě
}

◊box["ethydium bromid"]{
    Iont ethidia se vzměstná mezi dvě patra DNA, přičemž se obě patra o kousek pootočí --- nově jsou vůči sobě pootočená jen o 10◊|deg|, místo běžných 36◊|deg|. DNA se tedy trochu povolí. Pokud přidáme ethidia dost, ubereme DNA celou jednu otáčku, čímž snížíme ◊${T} a zvyšíme ◊${W} (je-li DNA cyklická nebo má někde upevněné konce).
}

◊subsubsection{Superhelix a replikace}

◊ls{
    - při replikaci se rozplétají vlákna
        - klesá ◊${T}, roste ◊${W}, superhelix se "zauzlovává"
        - je nutné nějak supercoil zase oduzlovat, protože jinak by brzo nemohla replikace probíhat: buďto je nutné nějak aktivně odstranit nové kladné nadobrátky, nebo je nutné mít připravené záporné nadobrátky, které se s těmi nově vznikajícími kladnými vyruší
    - u bakterií se zauzlování řeší připravováním záporných nadobrátek
}

O tvoření záporných nadobrátek se stará protein ◊strong{HU}, který má podlouhlou, spirální strukturu.

◊slide[28 26 #:s 5]
◊ls[#:t "Postup"]{
    # HU se naváže na DNA
        - díky jeho struktuře se kolem něj DNA obmotá
        - na DNA vzniknou v důsledku vazby a obmotání se záporné nadobrátky
    # na DNA se na druhé straně vytvoří kladné nadobrátky, aby vyrovnaly ty záporné
    # topoizomeráza I (TOPOI) odstraní tyto nově vytvořené "vyrovnávací" nadobrátky
    # HU protein se uvolní z vazby, a záporné nadobrátky na DNA po něm zůstanou
}

K podobnému jevu dochází i při transkripci.

◊subsection{Topoizomerázy}

Enzymy ovlivňující topologii DNA.

◊ls[#:t "TOPOI"]{
    - je to monomerní protein
    - štěpí jen jeden řetězec DNA
        - štěpí esterovou vazbu mezi cukrem a fosfátem
        - zůstane na vlákno navázaná
            - u eukaryot na 3' konec
            - u prokaryot na 5' konec
        - váže se přes Tyr
    - ubírá jednu nadobrátku
        - konkrétně relaxuje negativní nadobrátky, které už na DNA jsou
    - k funkci nepotřebuje ATP
}

◊slide[37 #:s 5]
◊ls[#:t "TOPOI (funkce)"]{
    # přestřihne jedno vlákno DNA
    # provleče druhé vlákno skrz mezeru
        - tímto se odtraní jedna otáčka
    # mezeru spojí (zaliguje)
}

◊ls[#:t "TOPOII"]{
    - dvě podjednotky alfa a dvě beta
        - DNA se váže k alfa podjednotce
    - štěpí oba řetězce DNA
        - štěpí esterovou vazbu mezi cukrem a fosfátem
        - zůstane na vlákno navázaná
            - u eukaryot na 3' konec
            - u prokaryot na 5' konec
        - váže se na Tyr
    - přidává dvě negativní nadobrátky
        - konkrétně relaxuje jednu pozitivní nadobrátku, a vytváří jednu negativní
    - k funkci potřebuje ATP
}

◊slide[42 #:s 5]
◊ls[#:t "TOPOII (funkce)"]{
    # přestřihne obě vlákna DNA
    # provleče mezerou druhou část helixu
        - tímto vzniknou dvě otáčky
    # mezeru zacelí
}


◊slide[38 41 #:s 5] TOPOI i TOPOII umožňují i spojení (katenaci) dvou samostatných CO, úplně stejným postupem, jakým fungují běžně.

◊subsection{Zkoumání topologie DNA}

◊ls[#:t "Rozlišení DNA dle topologie"]{
    - elektroforéza
    - centrifugace (izokinetická, izopyknická)
    - elektronová mikroskopie
    - chování při denaturaci a reasociaci
        - cyklická DNA se reasociuje mnohem rychleji než lineární
    - chování po interkalaci EtBr
    - odolávání mechanickéu namáhání
        - linerání DNA je křehká, jako nevařená špageta
        - ccc (covalenntly connected cyclic) DNA je relativně odolná
}

◊slide[49 50 #:s 5]
◊ls[#:t "Zkoumání pohybu supercoilů"]{
    - supercoily se dají připravit experimentálně
        # na jedné straně DNA fixovaná, na druhé má magnetickou kuličku
        # otáčíme kolem DNA magnetické pole, kulička se otáčí taky
        # DNA se namotává, vznikají supercoily
    - supercoily se mohou po vlákně pohybovat
        - například když na DNA působíme proudící kapalinou
        - většinou se jen posunují, někdy ale coil "přeskočí" kus sekvence (hopping)
}

◊title{Elektroforéza nukleových kyselin}

◊slide[20 21 #:s 5]
stejné DNA strands se pohybují různě rychle podle tvaru
- DNA vždy ke kladné elektrodě (1 neg na bp)

Na Každou molekula vystavená elek. poli působí F = q * E. Protože ale molekula není ve vakuu, působí na ni i F_v = f * v (třecí síla, f = frikční koeficient).

◊slide[4 #:s 6]
Po dosažení F = F_v = q * E = f * v => v = qE / f => pohyblivost mi = v / E = q / f. Poměr mezi mol. hmotsnotí a nábojem je konstaní, ale naštěstí mají menší molekuly menší koeficient tření. Závislost rychlosti putování na velikosti není lineární.

Ovlivněna:
- iontovou silou
    - pokud budou v roztoku katyionty, mohou DNA obalit, ta bude poté putovat pomaleji
- ekeltrolysou u elektrod
    - může se měnit pH, což může mít vliv na stavbu DNA a RNA
- elektroosmosou
    - putování malých nabitých iontů a vody skrz gel, které může mít opačný směr než je směr putování DNA
- tvorbou tepla
    - viskozita, odpar, vodivost a denaturace ovlivněny teplem
    - při některé ELFO se vzorek putováním zahřívá


ELFO
◊slide[7 9 #:s 6]
- provádí se v kapilárních systémech gelů
    - kapilární proto, aby vzorek nedifundoval do stran
- agarosový gel (AG)
    - složení
        - lineární polysacharid z mořských řas
        - D-galaktosa + 3,6-anhydro-L-galaktosa
    - snadná příprava
    - snadná manipulace v horizontálním uspořádání
    - většinou pro DNA o velikosti 1000bp -- 50000bp, při pulzní ELFO až do 2Mbp

◊slide[11 #:s 6]
způsoby dělení molekul
- molekula je velice malá
    - bude procházet mezi molekulami gelu bez omezení ryhlosti
- molekula je středně velká (entropická past)
    - pohyblivost je nejvíce ovlivněna velikostí molekuly
- molekula je lineární
    - moekula se protáhne a provleče mezi molekulami gelu
    - rychlost pohybu není závislá na délce
    - například DNA (rozmotá se)

Na obrázku lze vidět porovnání délky moelkuly a rychlosti, s jakou putuje v gelu. Snažíme se vždy, aby u námi pozorovaných molekul i malý rozdíl v déle způsobil velký rozdíl v rychlosti (a i málo rozdílné molekuly šly tím pádem dobře rozeznat).
◊img["slides-6/slide-10.jpg"]{Dělení molekul při ELFO}

◊ls[#:t "Faktory ovlivňující průběh"]{
    - napětí
        - při nízkém napětí je mobilita lineární DNA přímo úměrná napětí (což chceme)
        - při zvýšeném napětí nad určitou mez (5 V/cm) se mění mobilita fragmentů různě v závislosti na jejich velikosti (což nechceme)
    - směr elektrického pole
        - někdy se používá pulzní ELFO, kde se periodicky mění směr elektrického pole
    - složení bází a teplota
        - nehrají velkou roli
        - většinou pokojová teplota
    - přítomnost interkalátorů
        - EtBr snižuje mobilitu lineární DNA o 15%
}


Potřebujeme pufr, abychom měli homogenní elektrické pole přes celou délku. Zároveň ale moc pufru -> zahřívání gelu. Obecně je nejlepší dělat ELFO dlouho při malém napětí, než naopak.
- různé druhy pufrů

Gel může být různě koncentrovaný, více koncentrovaný gel se hodí pro práci s malými molekulami DNA. Konkrétně pro molekuly o velikosti 0.1--2kb se hodí asi 2% agaróza, na druhé straně spektra pro molekuly o velikost 5--60kb se hodí 0,3% agaróza.

Vzorek se při nanášení do gelu míchá s nanášecím pufrem.
- zvyšuje hustotu vzorku, který klesá dolů ke startu
- barvou usnadňuje nanášecí proces
    - většinou přidané barvivo
        - BPB, která putuje přibližně jako 300bp dlouhá DNA
        - XC jako 4kbp DNA

Pro analýzu potřebujeme obarvit vzorek. Většinou se barví EtBr, které se interkaluje do helixu. Je to kancerogen (vmezeřuje se i do naší DNA). Alternativy: SYBR Green I (dražší, ale menší množství a není nutné proplachovat gel).

DENATURAČNÍ GELY
- někdy nechceme dělit DNA podle topologie, ale jen podle jejich velikosti
- denaturační činidla: močovina, formamid (méně často)
- vysoké napětí, gel se zahřívá (50◊|deg|C) => DNA je v lineární formě
- vysoké rozlišení, lišící se i o pouze jeden nukleotid

◊todo{Přidat slide 22}

JAK DOSTAT DNA Z GELU (eluce NA z gelu)
- zahřát agarózu (low melting AG)
- elektroeluce (necháme DNA vyputovat z gelu do roztoku)
- degaradace AG (jen málo enzymů, agaróza je odolná)

2D ELFO
◊slide[25 #:s 6]
# normálně ELFO
    - zauzlovaná DNA rychlejší než CO, lineární
    - rozdělíme DNA podle topologie
# přidáme EtBr (rozmotáme supercoily)
# 90◊deg otočení a znovu ELFO
    - rozmotané supercoily se v nové ose rozdělí podle délky

◊slide[27 #:s 6]
- někdy s EtBr, někdy druhá osa jen při vyšším napětí
    - mobilita při vyšším napětí se liší podle topologie

◊slide[28 30 #:s 6]
Pulzní ELFO
- používá se pro lepší rozlišení molekul podle délky, hlavně u delších molekul
    - dráha, kterou molekuly ujdou, je mnohem delší (protože jdou cik-cak)
    - molekuly jsou dobré v "zatáčení" v závislosti na své délce
- periodicky se mění směr elektrického pole
- jako reference se často používají konkatemery známých genomů bakteriofágů o určitých délkách, případně chromozovy S. cerevisae a S. pombe (druhy kvasinek)

◊title{Sedimentační metody DNA}



◊section{Analýza obrázků ELFO v praxi}

◊meta{Tato sekce nebude u zkoušky, je zmíněna "jen pro naše dobro".}

- software FIJI
- vyplatí se rozložit obrázek do tří, R, G a B
- obdélníkový výběr -> analyze -> plot profile
    - profil světlosti, ze kterého jde zjistit, na jakých pixelech jsou peaky (tedy zvýšené koncentrace DNA)

- FITYK
    - otevřeme vyexportovaný intenzitogram z FIJI
    - můžeme proložit fukncí, například gaussovská křivka automaticky rozpozná peaky