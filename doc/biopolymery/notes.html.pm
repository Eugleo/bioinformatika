#lang pollen

◊define-meta[title]{Struktura a vlastnosti informačních biopolymerů}
◊define-meta[header]{zápisy}
◊(define-meta toc #t)

◊title{Polymorfismus DNA}

Popisuje odchylky struktury DNA od její očekávané struktury

◊todo{Doplnit informace o endo a exo konfiguracích, syn a antiklinální, levo a pravotočivé, Hoogstedovo párování atd.}

ds a ss zkratky

VÝVOJ ZNALOSTÍ dsDNA
- první pokusy vycházely z difrakcí rentgenového záření na částečně uspořádaných vláknech dsDNA
    - WC párování je v konformaci B
    - zjistilo se, že difrakce jsou někdy velice odlišné - tím se pojmenovaly konformace A-Z • rozdělení do rodin podle směru vinutí a podle polohy párů bazí vůči ose řetězce
- později se zkoumal rozptyl na krystalech
    - nešlo z genomové DNA udělat krystal, a tak se krystalizovaly oligonukleotidy (rozlámané ultrazvukem)
    - na těchto krystalech získáváme informace ještě podrobnější, než na vláknech - objev sekvenčního polymorfismu - konkrétní páry bazí si vyžadují odchylky od ideálního modelu


◊todo{Doplnit slide uspořádání molekul v 3D prostoru.}
ASIDE: REAKCE a úhly
 - při náhodném rozmístění moelkul ve 3D prostoru je nejčastější rozložení úhlu 90◊deg, nejvzácnější je rozložení rovnoběžné
    - pokud se úhlový histogram interakcí dvou molekul bude lišit od sinu (který má peak v 90◊deg), můžeme zaujmout podezření, že spolu nějak reagují

◊section{Polymorfismus DNA}


- konformační, sekvencnčí, dynamický (neustálý pohyb), ohyby a zalomení, kondenzace

◊subsection{Dynamický}

◊slide[56 #:s 4]

Záleží na sekvenci.

◊slide[16 17 #:s 4] ◊slide[10 #:s 5] / konformace náhodného polyadenylylu a majoritní stabilní situace, oligo G, jsou tam tři stabilní místa
Určité volné torní úhly, DNA se nesutále trochu mění.

Každý vzorek DNA je dynamická soustava (neustálý pohyb). AT páry roztají první (méně H můstků). U konců molekuly tají rychleji.

Denaturace DNA: rozvíjení DNA do jednotlivých řetězců. Pokud se DNA rychle ochladí, renaturace není úplně kvalitní. Denaturované DNA absorbuje mnohem více, než běžná (hyperchronní efekt).

- DNA vazebné proteiny někdy lokálně měné konformaci DNA

= RODINY =

◊slide[20 22 #:s 4] / A, B, Z (v přítomnosti dvojmocných iontů)

◊slide[69 #:s 4]
- při palindromu, kde je jeden úsek DNA komplementární s nadcházejícícm úsekem na stejném vlákně, někdy na DNA vznikne kříž
- kromě kříže vlásenky, bubliny
- utajená přerušení: jedno vlákno je na kostře přerušené
    - nejsou problém, vlákna u sebe drží velkou siloi
    - začíná u nich denaturace
- gap: chybí nějaká báze
- zlom s adhezivními (lepivé) přeshujícími konci: strand se lepí na molekulu podobného tvaru, nezáleží ale na jejich původu; adhezivní konce umožňují vytvářet genetické změny v DNA, můžeme je míchat

STUDIUM ANOMÁLIÍ
- anomálie jsou hypersenzitivní k: nukleázy (S1, mikrokokální), chemické modifikace (glyoxal, chloracetaldehyd)
- detekce checmikcy značených: elektronová mikroskopie, denaturační křivky, elektroforéza, sekvenocání, vazba protilátek
- antigeny specializované na konformaci (DNA i proteinů) někdy danou strukturu stabilizují, když se na ni naváží, takže můžeme získat 70% B, 80% A

◊todo{Přepsat tabulku místo obrázku.}

◊slide[6 7 #:s 4] / velký a malý žlábek
- B-DNA je šroubovice, watson-crickovské párování (schargaffova pravidla), 5' a 3' konce (prodlužování na 3' OH skupině)
    - C1' uhlíky v rámci patra jsou vzdálené skoro stejně
    - C2' na stejnou stranu, jako C5' (endo konfigurace)
    - malký a velký žlábek
        - důležitá pro vazby molekul
        - bod A = průsečík osy šroubovice a patra bazí, polopřímka z A do C1' na obou bazích, místo, úhel pod 180◊deg je malý žlábek ◊slide[5 #:s 4]
        - mnoho proteinů reagujících s DNA funguje jako homodimer (reagují s DNA na dvou místech), mívají kladný náboj (a jsou bazické)
        - do malého žlábku se váže např. DAPI, která se používá k barvení ◊slide[9 #:s 4]
    - pravotočivá (spirála, protože báze něchtějí být úplně přesně nad sebou, jiank by to vypadalo jako zip)
    - patra vztálená 330~350pm, stacking interakce
    - uprostřed není žádné místo
    - tam, kde je voda, s nižší koncentrací vody -> A -> C -> Z
    - patra otočená o 36◊deg
    - fosfáty vzdálené kolem 9◊angs
- jeden pár bazí má asi 660g/mol = 660Da

◊slide[24 #:s 4]
konformace A
    - ribóza je C2' exo, C3' endo (naopak oproti C5')
    - dutina bývá zaplněna vodou, někdy interagují dvě báze skrz molekulu vody
    - pravotočivá

konformace Z
    - levotočivá
    - zig-zag uspořádaná kostra
    - střídá se purin-pyrimidin-purin...
    - puriny jsou synklinální (na rozdíl od A a B)
    - patra jsou si podobná ob jedno (v B jsou si podobná všechna), repetitivní je dvojice párů bazí nad sebou
    - některé modifikace bazí (například methylace na C5) ji stabilizují (methyl se dobře schová mezi dvě patra)

◊todo{Syn a anti konfigurace na proteopedii. Jsou tam i další fajn věci.}
heterokomplex RNA
 - OH skupina na RNA musí čnít ven, proto C2' exo
 - struktura se podobá konformaci A

OHYB VLÁKNA [MOODLE]
◊slide[66 #:s 4]
 - způsoben AT páry bohatými oblastmi
    - AT mohou reagovat napříč patry, čímž se DNA ohne
    - dobře dostupné (DNA trochu rozpletená) => často v promotorových nebo regulačních oblastech

◊slide[2 #:s 5]
VLÁSENKA [MOODLE]
- aminoskupina uracylu + fosfátová skupina
- uracyl a cytosin s ničím neváží
- cytosin stacking interaguje s párem pod sebou
- G+U pár (atypické párování), U+U pár
- G někdy H můstek s ribozou
=> celkově tedy na vrchu hairpinu často UUCG

◊slide[38 #:s 4]
Někdy se váží tři strandy DNA, dvě běžně v B konformaci, třetí CTCT (polypurinová část) úsek pomocí hoogstedova párování (<- H-DNA), puriny synklinální. Podobně se může vmezeřit i RNA.

= Vazby nukleotidů v RNA =
tRNA: Někdy jsou vazby typu U+U stabilizovány přes vmezeřenou molekulu vody.
rRNA: Někdy celé sítě interakcí. ◊slide[77 #:s 4]
někdy vysoké pH (bazické!) -> deprotonace OH na ribóze -> fosfát z kostry se naváže na O -> vznik cyklického nukleotidu -> rozpad, nalézáme P navázaný na O.
    - štěpící enzymy využívají stejný průběh

párování v RNA je více druhů, ◊slide[4 #:s 5]

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

◊subsection{Supercoil}

DNA bývá velice dlouhé, buňka ho chce samozřejmě vměstnat na co nejmenší plochu --- s tou podmínkou, že bude stále možné čtení DNA kódu, případně replikace. A právě tento problém supercoil řeší. Supercoil se mimo to významně podílí i na procesech replikace a transkripce, protože usnadňuje přístup proteinů k sekvenci DNA (viz níže).

◊todo{Doplnit z Albertse organizaci DNA v eukaryotické buňce (histony, nukelosomy) a přidat nějaký obrázek.}

Velikost supercoilu (počet nadobrátek) se měří:
◊align${
    \Delta L &= L - L_0 \\
    \sigma &= \frac{\Delta L}{L_0},
}
kde ◊${L_0} je ◊${L} relaxované DNA. ◊${\sigma} se nazývá superhelikální hustota a představuje počet přidaných/ubraných nadotáček vzhledem k původnímu počtu nadotáček.

◊todo{Některé kombinace W/T mění konformaci DNA, např. B -> Z. Vložit slide 29/5, na kterém to je, ale jako celý obrázek.}

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

◊section{Elektroforéza nukleových kyselin}

◊slide[20 21 #:s 5]
stejné DNA strands se pohybují různě rychle podle tvaru
- DNA vždy ke kladné elektrodě
- OC forma = open circle
    - gyráza vytvoří maximální počet nadobrátek
    - topoisomeráza 1: ubírá 1 nadobrátku
