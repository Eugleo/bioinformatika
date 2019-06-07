#lang pollen

◊define-meta[title]{Strukturní biologie buňky}
◊define-meta[header]{zápisy}
◊(define-meta toc #t)
◊define-meta[authors ("Evžen Wybitul" "Kateřina Krausová" "Lucie Drahoňovská" "Terka Čalounová")]

◊title{Struktura makromolekul}

◊lecture[1]

DNA má několik forem, konkrétně především B, A a Z. Tyto se liší velikostí žlábku, tvarem ribóz a případně orientací báze (synklinální/antiklinální).

◊meta{Další informace též odpovídající část zápisů ze základů bioinformatiky (◊link["../zaklady- bioinformatiky/notes.html#Struktura%20nukleových%20kyselin"]{DNA}, ◊link["../zaklady- bioinformatiky/notes.html#Struktura%20proteinů"]{proteiny}) a také zápisy z ◊link["../biopolymery/notes.html"]{celého druhého předmětu}.}

◊section{Interakce mezi molekulami}

Atomy (potažmo molekuly) jsou vázány kovalentně, nebo nekovalentně.

◊ls[#:t "Nekovalentní vazby"]{
    - vodíkové můstky
        - interakce dvou elektronegativních atomů s jedním vodíkem
        - délka 3◊|angs|
        - s rostoucím úhlem klesá jejiich síla
        - u proteinů energie ◊u{10 kJ/mol}
    - iontové interakce
    - stacking interakce
        - vznikají kvůli ◊|pi| vazbám na aromatických sloučeninách
    - Van der Waalsovy interakce
        - působí mezi všemi páry atomů, které jsou v určité vzdálenosti
        - přitažlivé
    - interakce kvůli hydrofobnímu efektu
        - přitažlivé (voda se snaží zachovat si co nejvíce vodíkových můstků)
        - nejvíce mezi nepolárními sloučeninami
}

◊section{Struktura proteinů}

◊meta{Předpokládají se základní informace o proteinech a o stavbě a složení aminokyselin. Viz popříadě ◊link["../zaklady- bioinformatiky/notes.html#Struktura%20proteinů"]{zápisky z bioinformatiky}.}

Proteiny jsou biopolymery složené z aminokyselin, které jsou vázané peptidickou vazbou. Peptidická vazba je ze 40% rezonanční, a proto je planární; rotace je dovolena pouze kolem chirálních ◊chem{C\alpha}. Volnost otáčení (tzv. torzní úhly) se zaznamnává na Ramachandranův diagram.

◊ls[#:t "Stereoizomerie"]{
    - L a D forma AK (v těle je častější L)
        - buněčná stěna bakterií často obsahuje D formu, aby nebyly rozpoznány
    - většina AK (až na glycin) má chirální uhlík, proto stáčí rovinu polarizovaného světla
}

◊meta{L a D se dají "na papíře" jednoduše rozlišit; stačí najít chirální uhlík, zorientovat si jej vodíkem k sobě a poté sledovat, v jakém pořadí jsou jeho další vazební partneři. Pokud se ve směru hodinových ručiček dá přečíst pořadí ◊strong{CO}, ◊strong{R}, ◊strong{N}, jedná se o ◊strong{L formu}.}

◊ls[#:t "Rotamery"]{
    - jednotlivé AK, které se liší pouze rotacemi kolem jednoduchých vazeb ve svém postranním řetězci
    - existují knihovny rotamerů
}

U proteinů rozlišujeme primární až kvartení strukturu.

◊ls[#:t "Kvarterní struktura"]{
    - obligátní nebo neobligátní
        - obligátní = vyskytuje se jen v rámci daného "komplexu" a ne samostatně
    - symetrická a asymetrická (evolučně mladší)
    - obvykle obsahuje malé množství podjednotek
        - výjimku tvoří F0ATPáza se 13 podjednotkami
}

◊title{Nástroje}

◊lecture[2]

◊ls[#:t "Přehled metod"]{
    - rentgenová krystalografie
        - difrakce RTG na elektronech
        - nejpoužívanější
        - nemá velikostní limit
    - NMR spektroskopie
        - využívá magnetické vlastnosti jader
        - zkoumaná látka musí být v roztoku
        - schopná zachytit i dynamiku molekul
        - má velikostní limit
    - elektronová mikroskopie, cryoTEM
        - používá svazek elektronů s vysokou energií
        - vhodná pro velké komplexy
        - má nízké rozlišení
        - kombinuje se s RTG a NMR strukturami
    - výpočetní metody
        - homologní modelování, strukturní bioinformatika
        - není potřeba vzorek, vše je ale nutno porovnat s experimentálními daty
}

◊section{Rentgenová krystalografie}

◊ls[#:t "Obecný postup"]{
    # příprava proteinu a krystalizace (dohromady kolem tří let)
    # difrakční experiment
    # vyřešení 3D struktury a její analýza
}

◊ls[#:t "Historie krystalů"]{
    - (1840) první proteinové krystaly: Hemoglobin, Hünefeld
        - víceméně omylem, kapali krev na sklíčko, molekuly vysychaly a praskly, vylil se z nich hemoglobin a zkrystalizoval
    - (1850) první metody krystalizace: Hemoglobin, Fünke
    - (1909) The crystallography of Hemoglobins, Reichert Brown
        - cca 600 obrázků, hemoglobiny z různých živočišných druhů, na základě tvaru a velikosti krystalů se snažili evolučně propojit, jak jsou si různé druhy příbuzné
    - (1915) krystaly séra albuminu
    - (1925) první krystal enzymu
    - (1935) první krystal viru (tabákoveá mozaika)
}

◊ls[#:t "Historie RTG"]{
    - (1895) RTG záření, W. C. Röntgen
    - (1910) teorie difrakce, Max von Laue
    - (1912) difrakce na krystalu
    - (1956) struktura myoglobinu, M. F. Perutz aj. C. Kendrew
        - viděli "párečky" (helixy)
}

RTG používáme místo běžného světla pro jeho kratší vlnovou délku; minimální rozlišení pozorování je totiž určeno jako ◊${D_{min} = \frac{\lambda}{2}} (poté již dochází k ohybu světla). Pokud se chceme dostat na atomární rozlišení ◊u{1e10 m}, musíme používat RTG.

◊subsection{Krystalizace proteinů}

Jedná se o nejtěžší část RTG krystalografie. Jako srážedla se používají soli, polymery, organické látky (odebíraají proteinu vodu). Přesné krystalizační podmínky nelze předpovědět, proto se dělá ◊em{screening} (testování 96 různých podmínek). Díky automatizai je nyní možné na každý pokus vypotřebovat pouze malé množství proteinu.

◊ls[#:t "Vlastnosti proteinových krystalů"]{
    - malé, symetrické
    - většinou bezbarvé
    - krychlová vnitřní struktura (shodná s diamantem, ◊chem{NaCl})
    - malé styčné plochy, hodně prostoru -> kanály vyplněné krystalizační tekutinou vedoucí všemi směry, tvořící až 70% krystalu
    - struktura krystalu velmi připomíná nativní strukturu
}

◊ls[#:t "Faktory ovlivňující krystalizaci"]{
    - fyzikální
        - teplota, povrchy, doba krystalizace, gravitace, tlak, vibrace, elektrické a magnetické pole
    - chemické
        - pH, typ srážedla, koncentrace srážedla, iontová síla, specifické ionty, stupeň přesycení, koncentrace proteinu, neproteinové nečistoty
    - biochemické
        - čistota proteinu, ligandy, inhibitory, efektory, biologické zdroje, historie vzorku, stabilita proteinu, genetické modifikace, post- translační modifikace, chemické modifikace, isoelektrický bod
}

◊subsection{Popis funkce}

◊ls[#:t "Princip RTG krystalografie"]{
    # krystal ozařujeme RTG zářením
    # výsledek vypadá jako odraz, ale je to difrakce
        - RTG interaguje s elektrony (předá jim energii), elektrony vyzáří sekundární vlnu
    # zaznamenáme intenzitu difrakce na detektor (kdysi fotografický papír, dnes elektronický detektor)
    # provedení Fourierovy syntézy (matematická operace)
    # výsledkem je model proteinové struktury, konkrétně mapa elektronové hustoty
}

◊ls[#:t "Difrakční experiment"]{
    - na krystal pouštíme jednu zaostřený paprsek RTG o vybrané vlnové délce
    - zaznamenáme difrakční obrazce ve všech směrech kolem krystalu
    - výsledkem je soubor, pro každou difrakci nalezeneme její aktivitu
}

◊ls[#:t "Fourierova transformace"]{
    - matematická operace, díky níž můžeme spojitou funkci (s užitím Fourierovy analýzy) rozdělit na sadu periodických funkcí
    - složky složíme zpět Fourierovou syntézou
    - získáme tedy co, z čeho původně data vyšla, tedy mapu elektronové hustoty
}

◊ls[#:t "Fázový problém"]{
    - nejsme schopni získat fázi elektronové hustoty experimentálně
    - máme několik metod, kterými ji zjišťujeme: metoda molekulového nahrazení, metoda izomorfního nahrazení, metoda anomálního rozptylu
        - molekulové nahrazení: odhad na základě předchozích výsledků
        - anomální rozptyl: zavedeme těžkyého kovu (Se, Hg), do něj namočíme krystal, pak odhadujeme fázi
}

Všechna PDB data jsou tedy pouze něčí interpretace jejich mapy elektronové hustoty. Proto je také nyní povinnost ukládat strukturní data (tedy přesnou podobu experimentálních dat), aby si každý mohl interpretaci udělat sám.


◊ls[#:t "Rozlišení"]{
    - závisí na kvalitě krystalu a intenzitě RTG záření
    - do jakého úhlu jsme schopni zaznamenat difrakce
    - nejlépe pod 2◊|angs|, neboť poté už hůře vidíme vodíkové můstky
}

◊section{Kryoelektronová mikroskopie}

Hodí se spíše pro větší vzorky; její rozlišení je omezené, ale stále se zlepšuje. V současné době se pohybuje kolem 6◊|angs|.

◊ls[#:t "Postup"]{
    # vzorek vysušíme
        - ve vrstvě soli obsahující těžký atom (uranyl acetát)
        - ◊em{negativní barvení}: zvýšení kontrastu, kontrola homogenity vzorku
    # umístíme jej na mřížku
    # mřížku se vzorkem zmrazíme
        - v tekutém etanu (cca 90°), rychlejší než dusík
    # umístíme mřížku do elektronového mikroskopu
    # ozáříme mřížku proudem elektronů a sledujeme stíny částic
    # vytvoříme 3D mapu rozmístění částic, z ní poté zhotovíme finální model
}

◊ls[#:t "Požadavky na vzorek"]{
    - velikost > ◊u{150 kDa} (čím větší, tím lepší)
    - symetrie (oligomery)
    - rigidita a stabilita proteinového komplexu
    - homogenita (někdy lze ovšem rozlišit i více složek)
}

Kromě toho je potřeba i vysokoenergetický dým s napětím ◊u{200} až ◊u{300 kV}.

◊section{NMR spektroskopie}
◊lecture{3}

Nukleární magnetická rezonance se často používá v analytické chemii, kromě toho je ale užitečná i při zjišťování struktury proteinů.

◊ls[#:t "Způsoby měření"]{
    - v kapalné fázi
        - vysokorozlišená a nízkorozlišená NMR (ta je jedna z nejpoužívanějších metod, je přesná)
    - v pevné fázi
        - druhá nejpoužívanější
        - látky nesmí být v krystalu (vzorek musí být amorfní)
        - vzorek je mikrokrystalický, nebo jeho molekuly tvoří agregáty
        - vysokorozlišená NMR, širokopásmová NMR, mikroskopie
    - in vivo NMR
        - sledování buněk a živých tkání
        - MR imaging
}

◊ls[#:t "Předměty studia"]{
    - prostorové uspořádání molekul (statický obraz)
    - vzájemné interakce
        - zásadní pro strukturní biologii
    - dynamické chování molekul
        - na úrovni postranních řetězců, celých molekul nebo domén
        - vhodná pro pozorování dějů trvajících mikrosekundy, nanosekundy
            - čím jsou molekuly pomalejší, tím méně je NMR vhodná
}

◊ls[#:t "Princip funkce"]{
    - všechna jádra mají spin (otáčejí se), proto když je vložíme do magnetického pole, pokusí se všechna jádra s nenulovým spinem nějak zorientovat
        - precesní pohyb s konkrétní frekvencí pro konkrétní jádro
    - tato frekvence je ta, kterou pozorujeme v NMR
    - pokud do magnetického pole dáme vysílač, vznikne další magnetické pole
        - na krátkou chvíli vysílač zapneme, tím vychýlíme atomy
        - poté opět vypneme, atomy se budou snažit dostat do původní polohy
        - pohybující se vektory ještě k tomu rotují v určité frekvenci
        - tento pohyb indukuje v cívce proud, který zpracujeme jako NMR signál
    - odezvu (měření rezonančních frekvencí jednotlivých atomů) měříme v závislosti na čase
        - tuto odezvu poté analyzujeme pomocí Fourierovy transformace
}

NMR malých molekul je základním nástrojem analytické chemie. V naměřených spektrech je ale více signálů a šířka čar odráží velikost systému. U komplikovanějších molekul, kde dochází k překryvu signálů, je třeba použít vícedimenzionální spektra a/nebo NMR aktivní heterojádra.

NMR biomolekul velice závisí na velikosti těchto molekul; čím je molekula větší, tím pomaleji se v roztoku pohybuje. A pomalé rotace vedou k rozšiřování čar signálů. To je zároveň ◊strong{největší nevýhoda NMR}: systém musí být jen tak veliký, aby čáry signálů nepřesáhly šířku, za kterou už je nemůžeme analyzovat.

◊ls[#:t "Zdroj magnetického pole"]{
    - magnet (ve tvaru nádoby)
    - supravodivá cívka chlazená héliem, na ní několik plášťů (mezi nimi vakuum kvůli izolaci), další kryokapaliny (dusík)
        - musí být ve stabilním prostředí, je nutné neustále doplňovat kapaliny
    - samotná nádoba má průměr asi ◊u{2 m}
    - uprostřed cívky je šachta, zespoda sonda
        - k sondě je nutné přivést radiofrekvenční záření
}

◊subsection{NMR proteinů}

Právě u proteinů se objevuje problém s citlivostí NMR. Jejich . .

◊ls[#:t "Metody pozorování"]{
    - proteiny jsou velké, rotují pomalu, jejich NMR signály jsou široké
    - komplexní a repetitivní sekvence způsobují překryvy čar
    - čím vyšší energii bude mít použité záření, tím necitlivější naše metoda bude
    - ◊chem{^12C} ani ◊chem{^14N} nejde na NMR vidět, musí se proto substituovat ◊chem{^13C} a ◊chem{^15N}
        - stavíme ◊em{korelační mapu}, kde zjišťujeme korelaci mezi protony a dusíky a korelaci mezi protony a uhlíky
}

◊meta{Následující odstavec prý zcela jistě bude ve zkouškovém testu.}
Narozdíl od RTG krystalografie pozorujeme u NMR ◊strong{přímou odezvu konkrétních atomů a skupin}, z těchto jednoduchých dat poté můžeme sestavit model popisující interakce těchto částí. Jedná se tedy o ◊strong{přímé porovnání}.

◊ls[#:t "Postup získání strukturní informace"]{
    # přiřazení signálu jednotlivým skupinám a atomům
    # získání strukturních omezení
        - intenzita signálu klesá se vzdáleností (s šestou mocninou)
        - nevidíme přes helixy
    # tvorba matice strukturních zobrazení
        - soubor konformací vyhovujících omezením
            - pouze upřesnění modelu, ne přesný výpočet
            - na periferiích jsou větší omezení
        - vypadá jako mapa elektronové hustoty
        - nejprve se skládají lokální části
}

◊section{Biomolekulární hmotnostní spektrometrie}

◊ls{
    - pozorujeme složení, stechiometrii, vazbu malých molekul, homogenitu, čistotu
    - vidíme spektra s atomárním rozlišením, zjistíme co je na molekulu připojeno (různé modifikace)
    - jsme schopni separace podle iontové mobility
    - velmi cenná v kombinaci s krystalografií
}

◊ls[#:t "Princip funkce"]{
    - potřebujeme molekuly převést do plynné fáze a z neutrálního stavu je dostat do iontového
        - ESI (electrospray ionization), MALDI (matrix- assisted laser desorption/ionization)
    - molekuly prochází přes spektrometr
        - v plynné fázi prochází přes vlastní spektrometr, který má více úseků
        - je vhodné použít i jiné způsoby dělení
    - na základě velikosti a náboje se molekuly oddělí a my je snímáme na hmotnostních spektrech
        - vzniká více čar, kde každá odpovídá jednomu náboji
        - z toho lze zjistit, jak daný komplex vypadá a jaké má složení
}

◊ls[#:t "Předměty studia"]{
    - velice podobné NMR
    - chemický crosslinking
    - výměna vodíku za deuterium (◊strong{HDX}, hydrogen- deuterium exchange)
    - prostorové uspořádání molekul
    - vzájemné interakce
    - dynamické chování interakcí
}

◊ls[#:t "HDX experiment"]{
    - protein se dá do ◊chem{D20}, tedy vody, kde je vodík nahrazen deuteriem
    - deuterium proniká do proteinu (vyměňuje se s vodíkem na páteři proteinu), protein je těžší
    - rychlost výměny ◊chem{D <-> H} závisí na tom, jestli má protein v daném místě navázaný ligand (pokud ano, je pomalejší)
    - stačí tedy změřit rychlost HDX s různými ligandy (globální HDX), popřípadě je možné protein rozsekat proteázou a změřit HDX u každého kousku
        - z toho zjistíme, která část proteinu váže jaký ligand
        - používá se LC- MS (kapalinová chromatografie s hmotnostním spektrometrem)
}

◊section{Bioinformatika (výpočetní metody)}

Výpočetní metody studují ty stejné problémy jako NMR a hmotnostní spektrometrie: prostorové uspořádání molekul, jejich dynamické chování a vzájemná interakce.

◊meta{Další informace lze najít v oddílu ◊link["../zaklady- bioinformatiky/notes.html#Predikce%20struktury"]{predikce struktury}.}

◊ls[#:t "Dělení"]{
    - homologní modelování
        - na základě podobnosti v sekvenci
        - jsme schopni porovnat primární sekvence molekul jako takové
        - počty struktur jsou veliké, chemický prostor je už ale dobře mapován, proto jsme schopni vyřešit minimálně části proteinů
        - podobnost velmi vysoká
    - ab initio metody
        - de novo návrh struktur
        - Rosetta
    - MD simulace, hybridní modelování
        - folding, molecular docking
        - simulace pohybů na časových škálách, které neumíme pozorovat jinými metodami
}

◊ls[#:t "Základní principy"]{
    - srovnáme sekvence, hledáme homologii
        - pokud nalezneme, můžeme zjistit sekvenci, strukturu
        - pokud ne, musíme přistoupit k tvoření ab initio
    - ab initio výpočet struktury
        - velký problém s parametrizací
        - Rosetta (David Baker)
            - vychází ze známých pdb struktur, rozsekaných na malé fragmenty
            - porovnává sekvence, skládá fragmenty a hádá, jak by mohla vypadat další sekvence
            - poté vybere model a provede validaci
    - simulace molekulární dynamiky (MD simulation)
        - je používána homologním modelováním i ab initio metodami
        - poskytuje různá rozlišení
        - slouží k testování strukturního efektu mutací (např. u HIV reverzní transkriptázy)
    - konstrukce hybridních strukturních modelů
        - umožňuje integrovat informace z různých metod
}

◊title{Enzymy}
◊lecture{4}

◊ls{
    - oxidoreduktázy (přenášejí ◊chem{H+} nebo ◊chem{O})
    - transferázy
    - hydrolázy
    - lyázy
    - isomerázy
    - ligázy
}

◊ls[#:t "Mechanismus funkce"]{
    - funkce je ovlivněná strukturou
    - váží se na substrát a snižují energetickou barieéru, takže reakce mlže proběhnout rychleji
    - mechanismus zámku a klíče
        - enzym má preformované aktivní místo, do kterého se vejde pouze jeden substrát (musí mít určité vlastnosti)
        - pouze pro tento substrát reakce proběhne
    - mechanismus induce fit (indukovaného přizpůsobení)
        - aktivní místo nemusí být připravené na daný klíč
        - na enzym se může navázat substrát, který indikuje změnu vazebného místa
        - hexokináza: po vazbě obou dvou substrátů se aktivní místo přizpůsobí tak, že reakce může proběhnout
    - některé enzymy potřebují "pomocníky"
        - kofaktory
        - koenzymy
        - prostetické skupiny
        - allosterické regulátory (molekuly vázající se mimo aktivní místo)
}

◊ls[#:t "Inhibitory"]{
    - kompetitivní
        - přímo se váží na aktivní místo
        - kompetují se substrátem
    - nekompetitivní
        - váží se mimo aktivní místo
}

◊section{Karbonátlyáza}

◊ls{
    - anglicky carbonic anhydrase (CA)
    - katalyzuje reakci
    ◊$${\ce{CO2 + H20 <=> H+ + HCO3-}}
        - tato reakce je samovolná
    - nejrychlejší enzym na světě, hydratuje ◊${10^6} molekul ◊chem{CO2} za sekundu (zrychluje reakci ◊${10^7 \times})
    - pět tříd: ◊${\alpha, \beta, \gamma, \delta, \zeta} (a nově objevená šestá třída ◊${\eta})
        - všechny mají jako kofaktor nějaký kov (◊chem{Zn}, ◊chem{Mo}, ◊chem{Cd})
        - v těle máme ◊|alpha|
}

◊ls[#:t "Zinečný kofaktor"]{
    - konkrétně ◊chem{Zn^{2+}}
    - je koordinován histidinovými zbytky
    - koordinuje vodu, snižuje pKa vody na 7
    - stará se o odštěpení protonu
    - hydroxid zůstane navázaný na iontu, přichází substrát, dochází k nukleofilnímu ataku, odchází produkt a celá reakce pokračuje
}

◊subsection{Lidská CA}

◊ls{
    - pomáhají udržovat acidobazické prostředí v organizmu
    - účastní se ◊chem{CO2} a ◊chem{HCO3} transportu
        - respirace, resorpce kostí, glukoneogeneze, urogeneze, lipogeneze
    - 16 izoforem
        - CAII: ve všech buňkách, je jí hodně, je stabilní, dobře krystalizuje
            - má dobře definované aktivní místo, od něj vede cestička k C' konci vystlaná His
            - slouží jako off target: často chceme cílit léky na inhibici CAIX, ale zároveň nechceme inhibovat žádné její isoformy (to se právě těstuje na CAII)
        - CAIX: nadprodukce u nádorů, marker rakoviny, cíl vyvíjených léků
}

◊ls[#:t "Inhibitory CA"]{
    - známe strukturu CA => místo substrátu můžeme navrhnout kompetitivní inhibitor
        - např. sulfanomid
    - inhibitory lidské CA
        - všech 16 izoforem si je velice podobných
        - CAII anti- glaucoma drugs
        - CAV je cílem léků proti obezitě
        - CAVII je v mozku, je cílem léků na bolest hlavy a epilepsii
}

◊ls[#:t "Strukturou inspirované inhibitory"]{
    - cesta od ihibitoru k léku je drahá a dlouhá
    - pokud známe enzym a jeho inhibitor (a určíme jejich strukturu), můžeme inhibitor upravit tak, aby se vázal lépe (specifičtěji, s větší afinitou)
        - jedná se o iterativní proces vývoje z lead structure do finální struktury, která poté může jít do klinických testů
}

◊section{HIV proteáza}

Enzym vyskytující se v retroviru HIV. V buňce se přepíše z RNA do DNA. Je jedním z hlavních cílů pro léky HIV.

◊ls[#:t "Struktura"]{
    - zcela symetrický dimer
    - dva řetězce, dvě podjenotky; každý řetězec je složek z 99 AK
    - obě podjenotky jsou u sebe drženy svými N a Ckonci, kromě toho také aktivním místem ("zakousnou" se do sebe)
    - v aktivním místě jsou  (podobně jako u pepsinu)
}

◊ls[#:t "Funkce"]{
    - štěpí polyprotein na jednotlivé proteiny nutné k fungování viru
        - klíčová pro správnou funkci viru
    - pro katalýzu je důležitá molekula vody
    - aktivní místo nemá předpřipravené, vytvoří se až po navázání substrátu (induced fit)
        - po navázání substrátu vypudí všechnu přebytečnou vodu
    - je ◊em{promiskuitní}, rozpoznává celou řadu substrátů (devět)
    - na začátku musí rozštěpit i sebe
}

Podle tvaru substrátu se vyvinula léčiva, která funkci enzymu inhibují (např. ritonavir). Deset takových inhibitorů je v klinické praxi; virus ale díky reverzní transkripci, která často chybuje, velice rychle mutuje a tedy si rychle vyvine proti léčivu rezistenci. Tyto (primární) mutace často musí být kompenzovány mutacemi sekundárními.

◊definitions{
    ◊term["primární mutace"]{
        Snižují afinitu k inhibitoru, vyskytují se především na aktivním místě.
    }

    ◊term["sekundární mutace"]{
        Kompenzují efekt primárních mutací na aktivitu, zaručují, že primární mutace nebudou mít na aktivitu negativní dopad. Vyskytují se dále od aktivního místa.
    }
}

◊section{ATP syntáza}

◊ls{
    - v membráně mitochondrií, chloroplastů a bakterií
    - katalzuje reakci
    ◊$${\ce{ADP + Pi + H + out <=> ATP + H2O + H + in}}
        - syntetizuje ATP z ADP a fosfátu, využívá k tomu protonový gradient
    - dodává všem organizmům energii
    - funguje trochu jako molekulární motor: ◊chem{F0} podjednotku v membráně pohání protony, zatímco ◊chem{F1} podjednotku pohání ATP
    - ◊chem{F0} podjednotka se dá inhibovat oligomycinem
}

◊title{Membrány}

◊ls{
    - zajišťují tvar buněk, komunikaci, obranu, přichycení, rozpoznávání a přenos signálů
    - urdžují specifické prostředí buňky
        - koncentraci iontů, malých metabolitů a makromolekul
    - eukaryota mají membrány i uvnitř buňky
    - složení
        - lipidová dvojvrstva
        - proliny
        - glycerocalyx = "cukerný obal"
        - steroly vložené v lipidové dvojvrstvě
    - velmi dynamická struktura - model fluidní mozaiky
    - cytoplazmatická část je negativnější než exoplazmatická
}

◊ls[#:t "Tloušťka membrány"]{
    - nemá konstantní tloušťku
        - záleží na typu membrány, teplotě apod.
        - v literatuře 4-- 10nm, obvykle 5-- 6nm
    - 3nm hydrofobní jádro a 1-- 1,5nm polární hlavy
    - apikální membrána jaterní buňky je asi o 7◊|angs| širší než basolaterální membrána
    - membrána v uspořádaném stavu (nižší teplota) je užší než v neuspořádaném stavu
    - ohyby membrány způsobeny složením lipidů a proteinů (fosfatidylcholin a sfingomyelin způsobují konvexní pohyb)
}

◊section{Lipidy}

Lipidů je až 200 typů.

◊ls[#:t "Glycerofosfolipidy"]{
    - nejčastější
    - glycerol + 2 alifatické řetězce
                    - jeden zahnutý (nenasycený), druhý přímý (nasycený)
    - přes esterovou vazmu návázán fodfátový zbytek a další alkohol
    - různé typy se liší v navázaném alkoholu
    - některé fungují jako signální
}

◊ls[#:t "Sfingolipidy"]{
    - často v mozku
    - účastní se zánětlivých reakcí
    - často v části směřující do extracelulárního prostoru
}

◊ls[#:t "Steroly"]{
    - 20-- 30% všech membrán
    - Produkují se v obrovském množství (1--2g/den/člověk)
    - ovlivňují tekutost (fluiditu) membrány (mohou zvyšovat i snižovat)
    - nezbytná součást membrán
    - polarizované
    - aromatické kruhy a OH skupina
    - např. cholesterol
}

◊ls[#:t "Ethery"]{
    - díky nim mohou archea přežívat i v extrémních podmínkách
}

◊ls[#:t "Distribuce lipidů na membráně"]{
    - lipidy jsou na membráně distribuovány asymetricky, vznikají ◊strong{lipidové rafty}
        - membránové mikrodomény
        - ostrůvky bohaté na proteiny
        - vznik po laterálním pohybu proteinů
        - organizační centra pro uspořádávání signálních makromolekuul
        - ovlivňují membránovou fluiditu a transport membránových proteinů
        - regulují neurotransmisi
    - enzymy schopné přehazovat lipidy na druhou stranu vrstvy
        - flipázy, flopázy, skramblázy
}

◊section{Membránové proteiny}

Většina léků je založena na interakci s membránovými proteiny.

◊ls[#:t "Tvary"]{
    - sedminásobný
    - beta barel
    - periferální
    - zanořený alfa helix
}

◊definitions{
    ◊term["prenylace"]{
        Připojení isoprenoidů (např. farnesylu, geranyl-geranylu) k cysteinům cílového proteinu.
    }

    ◊term["mytistoylace"]{
        Druh acylace. Připojení zbytku kyseliny myristové ke koncovému glycinu proteinu.
    }

    ◊term["palmitoylace"]{
        Druh acylace. Připojení zbytku kyseliny palmitové na ◊chem{SH} skupinu cysteinu.
    }
}

◊ls[#:t "Proteiny asociované s lipidy"]{
    - kovalentní interakce
    - periferální proteiny
    - způsoby připojení
        - prenylace, acylace (mytistoylace, palmitoylace)
        - připojení pomocí GPI kotvy (přes glykofosfatidylinositol)
}

◊definitions{
    ◊term["positive inside rule"]{
        Intracelulární rezidua mají kladnější náboj než ty extracelulární. Souvisí se záporným nábojem vnitřní strany mebrány. Využívá se predikci orientace proteinu.
    }
}

S tímto pravidlem souvisí také jev tzv. "šnorchlování", tedy interakce polárních skupin proteinů s polárními skupinami lipidů hluboko v membráně.

◊ls[#:t "Primární struktura"]{
    - aminokyselinové složení odlišné od ostatních proteinů
        - relativně vysoký obsah Gly a Pro
        - vysoké zastoupení Tyr a Trp (3x vyšší než u cytosolických proteinů)
        - vysoké zastoupení Lys a Arg v cytoplazmatické části (smyčky)
    - ze sekvence lze z 98% určit, zda se jedná o membránový protein či ne
    - výrazně hydrofobní transmembránové (TM) úseky o délce okolo 20AK
}

◊subsection{Sekundární struktura}

◊ls[#:t "Proline kink"]{
    - zlom na helixu způsobený proliny
    - okolo zlomu jsou časté Ser a Thr
    - prolin dělá ostrou zatáčku v membráně
        - někdy vhodné pro regulační vlastnosti
        - někdy pro přizpůsobení se
        - může zvětšit flexibilitu toho, co je třeba navázat
}

◊ls[#:t "Reentrant loops"]{
    - helix neprojde skrz celou membránu, ale otočí se a vyjde tam, kde vešel
    - obsahuje je 10% membránových proteinů
    - s rostoucím počtem transmembránových úseků roste pravděpodobnost výskytu
}

◊ls[#:t "Experimentální určení struktur"]{
    - náročné --- potřebujeme protein vyizolovat a dostat do roztoku
    - průlomem bylo objevení detergentů a kryoelektronové mikroskopie
    - detergenty
        - citlivě rozrušují membránu
        - obalí hydrofobní části
    - MemProtMD
        - databáze struktur membránových proteinů
        - 150 000 struktur, z toho 3000 membránové proteiny
        - první struktura 1982
}

◊subsection{Příklady membránových proteinů}

◊ls[#:t "Poriny"]{
    - objeveny v bakteriích u eukaryot se nalézají v mitochondrální membráně
    - kladně nabité směrem do kanálu
    - v kanálu často váží vápenaté ionty
    - častý je trimerní porin
        - tři díry ve specifické orientaci
        - často méně specifický
}

◊ls[#:t "G-protein-coupled receptors"]{
    - receptory spřažené s G-proteiny
    - struktura G-proteinu objevena roku 2007, struktura G-proteinu v komplexu objevena roku 2011
        - ◊${\alpha} podjednotka váže nukleotid a reaguje s receptorem
            - když má navázaný GTP, je v neaktivním stavu (disociuje GTP)
            - když má navázaný GDP, je v aktivním stavu
            - je v interakci s receptorem, sama o sobě se neumí navázat, k tomu potřebuje ◊${\beta} a ◊${\gamma} podjednotku
        - ◊${\beta} a ◊${\gamma} drží pevně pohromadě
    - průběh signálu
        # přijde signální molekula (adrenalin), naváže se na ◊${7\times} procházející receptor
        # konformační změna
        # disociace GTP, aktivace G-proteinu
        # odpojení ◊${\alpha} podjednotky
}

◊ls[#:t "Draselný kanál"]{
    - tetramer: čtyři podjednotky, tři slabiky, dva transmembránové helixy, jeden otvor
    - úzký průchod, extrémně selektivní --- prochází pouze draslík
        - sodík je sice menší, a měl by tedy procházet spíš, ale draslík se umí lépe zbavit vody, takže projde lépe on
    - karboxylové skupiny draslík dobře koordinují
}

◊ls[#:t "Sting"]{
    - aktivátor a stimulátor genů
    - nachází se v membránách ER
    - má imunitní povahum, spouští protizánětlivou reakci při styku s cizí DNA
    - po navázání cAMP dochází k otočení transmembránové části o 180◊|deg|
}

◊ls[#:t "Bakteriální ATP syntáza"]{
    - enzym produkující ATP
    - byla za něj udělena Nobelova cena
    - struktura nebyla určena celá
}

◊ls[#:t "Kardiolipin"]{
    - tvoří až 20% fosfolipidů
}

◊title{Struktura DNA}

Většina strukturních informací je z elektronové mikroskopie.

◊img["dna_makrostructure.png"]{Obrázek makrostruktury DNA}
◊;{Zdroj: Alberts, str 215}

◊ls[#:t "Makrostruktura DNA"]{
    - do ◊u{5 \mu m} je potřeba složit více jak metr DNA, proto je DNA silně kondenzovaná
    - DNA je namotána na ◊strong{histonové oktamery} (viz níže)
        - komplex histonů a DNA se nazývá ◊strong{nukleozom}
    - kromě histonů jsou na DNA i další non-histonové proteiny; komplex histonů a těchto proteinů s DNA se souhrnně nazývá ◊strong{chromatin}
        - chromatin tvoří ◊strong{30nm vlákno}
        - tetranukleozomy se uspořádají do superhelixu, jeho dynamika se řídí délkou linkerů mezi nukleozomy
            - úlohu hrají i postranní řetězce histonů 3 a 4
}

◊definitions{
    ◊term["linker DNA"]{
        DNA mezi nukleozomy, která není na nic navinutá. Mívá délku 20--30pb.
    }
}

◊ls[#:t "Cohesiny a condensiny"]{
    - po replikaci se skládá chromozom ze dvou chromatid, které musí držet u sebe; to zajišťuje cohesin
    - naopak kondenzaci chromatid a rozvolnění vazeb mezi nimi má na starosti condensin
        - condensin je tak velký, že jím projde nukleosom
    - obojí jsou proteinové komplexy
        - coiled-coil helixy
        - vytváří velkou smyčku a ATPázovou doménu
    - vyvíjí se v jádře
    - k funkci potřebují ATP

}

◊section{Histony}

◊ls{
    - jádro nukleozomu je proteinový oktamer složený ze čtyř párů identických ◊em{histonů} (H2A, H2B, H3, H4)
        - všechny tyto histony mají konkrétní strukturní motiv "histone fold", složený ze tří helixů a dvou smyček
        - tímto histone foldem drží jednotlivé části oktameru u sebe
    - namotá se na ně 164 bazí DNA ve dvou otáčkách
    - mají nestrukturované konce s Lys a Arg, kde dochází k posttranslačním modifikacím
    - namotané DNA nelze dobře přečíst, proto existují histonové chaperony a chaperoniny, které umí nukleozomy po DNA různě posouvat
    - histon H1
        - spojuje nukleosom do solenoidu (širšího vlákna)
        - není součástí oktameru jako takového
        - interaguje s DNA (drží ji na nukleosomu)
        - má řadu regulačních funkcí
    - histon H3
        - nejvíce prozkoumané modifikace
}

Histonové modifikace tvoří epigenetický kód, který upravuje genovou expresi nebo podává informace o DNA, jako např. Informace o úrovni poškození, nebo o tom, že byl daný úsek DNA zrovna nově replikován. Tento kód je zpracováván komplexy ◊em{readers} a psán komplexy ◊em{writers}. Kromě toho může být i mazán pomocí ◊em{erasers}.

◊ls[#:t "Readers"]{
    - slouží ke čtení histonového kódu
        - poznají množství methylace
        - někdy naopak rozpoznávají neupravený úsek
        - větši­na k tomu má ◊em{aro­mat­ick­ou klec}, tj. část s aro­mat­ick­ý­mi AK
    - jeden reader často rozpoznává více značek najednou (čili hledá jejich kombinaci)
        - pro stejný účel se někdy spojí dva readery do komplexu
        - dva readery mohou být v konfiguraci cis nebo trans, podle toho, na jaké straně DNA čtou
    - např. chromodomény, promodomény, tudor domény, BD pro­teiny, WD40 Tu­dor, PWWP
        - tudor WD40 čte methylace na Arg
}

◊ls[#:t "Writers"]{
    - mají složitou strukturu
    - někdy jsou v komplexu s readerem
        # reader se naváže na modifikovaný nukleozom
        # writer se dostane blízko sousedního nukleozomu a modifikuje ho
        # reader přeskočí na tento nově modifikovaný nukleozom
        # writer se dostane do blízkosti dalšího atd.
    - H3K4
        - přináší methyl na lysin --- střed­ní část umí ze sub­strá­tu získat methyl, zbytek se váže na DNA a his­ton
        - fun­gu­je jako pinze­ta: krajní části uchopí nuk­leo­zom a střed­ní část se při­blíží k his­tonu, který methyluje
    - H3K79
        - - je potřeba signální ubiquitinilační značka
        - má méně domén, pro­tože neváže methyl na zák­ladě DNA, které je hod­ně daleko
        - také má více stavů
        - nes­tačí mu na­jít jen H4 tail, ale také další konce jiných his­tonů se speci­fick­ý­mi značka­mi
}

◊section{Replikace DNA}

◊img["replication.jpg"]{Schematický obrázek replikace DNA}

Aby byl systém co nejvýkonnější, dochází k velkému množství replikačních reakcí najednou.

◊ls[#:t "Topoizomeráza"]{
    - rozvolní superhelix
}

◊ls[#:t "Replisom"]{
    - vyšší dynamická struktura
    - sdružuje více proteinů
}

◊ls[#:t "ORC (origin recognition complex)"]{
    - trochu DNA ohne, ta je lépe přístupná pro další proteiny (např. helikázy)
    - ATPáza složená z 6 podjednotek (hexamer)
    - má specifické vnitřní rozhraní, které rozpozná specifickou sekvenci DNA (až 17 bazí)
    - často bohatý na AT báze
        - <= mají slabší vazby a jdou tak lépe oddělit
}

◊ls[#:t "Helikáza"]{
    - rozdělí vlákna DNA, vytvoří replikační vidličku
    - tvořena dvěma hexamery
        - na začátku je hexamer otevřený (tvar písmene C) potom se zavře, přistoupí další proteiny, dochází k vlastnímu rozplétání
        - hexamery na sebe nasedají s posunem, protože jsou mimo osu, na DNA je vyvíjen tlak a začne se rozplétat
    - např. MCM (minichromosome maintenance protein complex)
}

◊ls[#:t "DNA polymeráza"]{
    - má schopnost tvořit i štěpit DNA
    - na jednom vlákně vytváří nové vlákno lineárně, na druhém přerušovaně přes okazakiho fragmenty
    - jeden z nejkonzervovanějších a nejprozkoumanějších proteinů
}

◊ls[#:t "Topoizomeráza"]{
    - přeštípne jeden řetězec, rozmotá jedno překřížení a zase vlákno spojí
        - za polymerázou dochází k nechtěné torzi (tlačí před sebou otočky DNA), přesně toto řeší TOPOI
    - ATPáza (potřebuje ATP pro vznik dimeru, tj. k vlastnímu sestřihu)
    - striktně alfa-helikální struktury
    - v aktivním místě má Tyr schopné navázat se na báze
    - existují různé druhy
        - např TOPOI štěpí jen jeden řetězec a TOPOII štěpí dva
}

◊ls[#:t "Telomeráza"]{
    - polymeráza neumí dojít až na úplný konec vlákna, replikací přicházíme o několik posledních párů bazí
    - proto jsou na koncích chromozomů telomery s repetitivními sekvencemi
    - enzym telomeráza je umí doplňovat
        - nese si vlastní templátovou RNA, podle které ony konce dosyntetizuje
    - multikomplex proteinové části (enzymatická aktivita) a RNA (templát)
        - templát: RNA sbalená do pseudoknotu (pevná struktura, chová se jako protein)
}

◊subsection{DNA repair}

◊ls{
    - při replikaci dochází k mnoha chybám
    - poškození DNA
        - chybějící báze
        - nežádoucí spojování bazí
        - kovalentně modifikované báze v určitých pozicích
    - musí existovat řízený opravný mechanizmus
}

◊ls[#:t "DNA-proteokináza"]{
    - strukturní element, který pojme DNA konec a ochrání ho před dalšími reakcemi
    - má kinázovou doménu
    - některé části nají tvar solenoidu tvořeného helix- smyčka- helix úseky (heal??)
    - rozpozná celý systém
    - vytvoří synapsi a přivolá další proteiny včetně ligázy
}

Proteiokináza je na místo potřeby "zavolána" ◊strong{KU proteinem}, který našel chybu (break). Přerušené vlákno jsou poté schopny spojit ◊strong{ligázy}.

◊section{Translace}

◊definitions{
    ◊term["translace"]{
        Syntéza proteinu na základě informace zakódované v mRNA. Probíhá na ribozomu.
    }
}

◊ls[#:t "Zainteresovaná RNA"]{
    - mRNA
        - výsledkem transkripce z jádra
        - transportována z jádra do cytoplazmy
        - tam je rozpoznána ribozomem a ukotvena
    - tRNA
        - struktura trojlístku s rameny (ve 3D tvoří písmeno L)
        - struktura je konzervovaná, ale s variabilní smyčkou
        - akceptorové rameno
            - 3' konec: ACC
            - váže aminokyselinu
    - rRNA
        - tvoří ribozom
}

◊ls[#:t "Ribozymy"]{
    - nukleové kyseliny s katalytickou funkcí
    - enzymaticky aktivní
    - umí štěpit cukrfosfátovou kostru
}

◊subsection{Ribozom}

◊ls{
    - má tři významná místa
        - A místo, akceptorové místo pro nově přicházející tRNA
        - T místo, kde se váže tRNA na tvořící se polypeptidový řetězec
        - E místo, kde prázdná tRNA opouští ribozom
    - první schéma už z 60.--70. let
    - 2000 struktur v PDB
}

◊ls[#:t "Malá podjednotka"]{
    - 30S
    - molární váha 0,85 MD
    - cca 1600 nukleotidů
    - 21 proteinů (S1, ..., S21)
    - odpovídá za rozpoznání
    - vazváže se na ni mRNA
    - dekódování genetické informace
    - nasedá jako první
}

◊ls[#:t "Velká podjednotka"]{
    - 50S
    - molární váha 2,5 MD
    - cca 3000 nukleotidů
    - 34 proteinů (L1, ..., L34)
    - 2 RNA řetězce
    - enzym, který vytváří peptidovou vazbu
    - elongace peptidového řetězce a jeho ochrana
    - odpovídá za katalýzu peptidové vazby - elongaci
}

◊ls[#:t "Antibiotika"]{
    - řada z nich se váže na ribozom bakterie
    - zastavují translaci
    - váží se přímo do aktivního místa
        - zabraňují vzniku peptidické vazby na tvořícím se proteinu
}

◊subsection{Životní cyklus proteinů}

◊ls{
    # připojení AK na tRNA
    # syntéza
    # folding
    # degradace
}

◊ls[#:t "Připojení AK"]{
    - aminoacyl tRNA syntetáza (aaRS)
        - umí připojit AK na tRNA
        - dvě třídy, 20 konkrétních typů, pro kažkou AK jeden
            - velice se liší celkovou strukturou, ale aktivní místo mají všechny skoro stejné
        - dvě vazebná místa (jedno pro tRNA a druhé pro AK)
    - strukturní variabilita enzymů
        - 2 třídy (a více podtříd)
            # OH skupina na 2' uhlíku
                - Rosmannův fold (kombinace beta listů a helixů)
                - aktivní místo na povrchu
            # OH skupina na 3' uhlíku
                - antiparalelní beta listy
                - aktivní místo uvnitř
    - opravy enzymů
}

Isoleucyl-RS je vyjímka; má dvě ak­tivní mís­ta.
◊ls{
    -  snaha zaručit, že se místo Ile nenaváže Val, který je Ile tvarem velice podobný
        - Ile je zpravid­la velice důležitý pro fold­ing pro­teinu
    - do prvního místa se může navázat Ile nebo Val, do druhého jen Val
    - pokud se do prvního místa naváže Val, naváže se i do druhého (obě místa jsou blízko sebe)
        - enzym si toho všimne a Val odštěpí
    - pokud se do prvního místa naváže Ile, druhé místo zůstane prázdné
}

◊ls[#:t "Syntéza proteinu"]{
    - probíhá na ribozomu
    - nasednutí malé podjednotky na templát
    - přicházející tRNA nasedne do T místa ribozomu
    - přikrytí velkou podjednotkou
    - další tRNA nasedne do akceptorového místa (EF-Tu protein, "pošťák")
    - G-faktor tvoří peptidovou vazbu
    - tRNA odejde a řetězec se posune
}

◊ls[#:t "Folding proteinu"]{
    - jednoduché proteiny se umí sbalit samy
    - složitější potřebují chaperony, chaperoniny
        - pomáhají sbalování proteinů, zvlášť těch multidoménových
        - chaperony jsou monomery, chaperoniny oligomery z chaperonů
        - např. HSP (heat shock protein)
            - pozorován při vystavení bakterií vysoké teplotě
        - GroEL-GroES
            - bakteriální chaperoniny
            - HSP 90, HSP 10
            - dutina na začátku vyplněna hydrofobními AK, tvoří víčko
                - když se zavře, dutina se zvětší a dochází ke konformačním změnám
                - do lumen komplexu se dostanou nabité AK
                    - ideální prostředí k foldingu
}


◊ls[#:t "Degradace proteinů"]{
    - když přestanou být potřeba, buňka je recykluje
    - proteázy
        - volně putují v cytoplazmě
        - degradují proteiny
    - proteasom
        - velký komplex proteáz
        - 19S jednotka rozpozná ubiquitinované proteiny a jen ty pustí dovnitř
        - v centrální části má "mlýnek" (20S jednotka)
            - štěpí proteiny na krátké úseky (5- 7 peptidů)
            - v cytoplazmě je rozštěpí další proteázy
            - ubiquitin se recykluje
        - některé proteasomy berou všechny proteiny co najdou
            - ukáží je na povrchu
            - buňky imunitního systému pak mohou rozpoznat infekční proteiny
    - ubiquitin-proteasome pathway
        - enzymy ve všech prokaryotech i některých bakteriích kromě archeí
        - ubiquitin ligáza
            - připojí ubiquitin s lysiny
            - jeden ubiquitin nemusí znamenat degradaci
                - připojují se další, nastane ◊em{polyubiquitinace}
}

◊section{Transkripce}

◊ls[#:t "Regulace transkripce"]{
    - posttranslační modifikace na histonu
        - methylace, acylace atd.
        - jsou k tomu třeba modifikující enzymy (readers, writers, protein 14-3-3)
}

◊ls[#:t "Kontrolní elementy transkripce"]{
    - promotory, enhancery
    - chromatin v superorientaci
        - potřebujeme ho remodulovat - rozvolnit více organizované shluky
    - enhancery
        - oblasti DNA
        - vážou se na ně regulační proteiny
        - dokáží díky velkému mediátorovému komplexu komunikovat s promotorem
        - vzniká smyčka --- DNA se ohne, enhancer se dostane k polymeráze a začíná transkripce
        - mohou být až stovky bazí daleko od vlastního genu
}

◊ls[#:t "Transkripční faktory"]{
    - dokáží rozpoznávat specifické sekvence DNA (promotorové regiony, enhancery)
    - faktory lze rozdělit podle konformací, které zaujímají
        - většinou  tvoří heterodimery, mají tvar alfa helixu
        - specifita daná dvěma úseky DNA vedle sebe
        - motivy
            - zink finger
                - koordinuje zinkové atomy, které drží konformaci v aktivním stavu
            - leucinový zip
                - motiv pomocí něhož některé bílkoviny vytvářejí dimery
                - strany zipu se k sobě koordinují hydrofobními interakcemi
    - pioneer faktor
        - umí vázat histonový oktamer
        - např. faktor FoxA
            - strukturou se podobá histonu H1
            - dokáže napodobit interakci H1 přes vazebnou doménu
}

◊ls[#:t "Eukaryotická transkripce"]{
    - polymerázová reakce
    - RNA polymeráza
        - v aktivním místě Mg
        - 3 typy, které se liší složením podjednotek
            - I - umí syntetizovat RNA prekurzor
            - II - transkribuje mRNA a malé nekódující RNA
            - III - tRNA
        - přenos polymeráz
            - vytvoření většího množství komplexů
            - chaperonové proteiny pomohou jednotkám k přechodu přes nukleární pór do jádra
        - regulace pomocí fosforylace nestrukturovaného C konce
    - splicosom
        - viz video
}

◊subsection{Chromatine remodeling}

◊ls{
    - k DNA na nukleozomech není možné se dostat, je proto nutné chromatin ◊em{remodelovat} tak, abychom si DNA mohli přečíst
    - potřeba dodat ATP
    - způsoby remodelingu
    - posunutí nukleozomu
        - odhalení té části DNA, kterou potřebujeme
        - velmi energeticky náročné (překonávání elektrostatických interakcí)
    - zbavení se nukleozomu
        - díky chaperonům ale zůstává stále poblíž, "naskočí" rychle zpátky
    - zhušťování a ředění vzdálenosti nukleozomů
    - výměna histonu (nejčastěji H2)
}

◊ls[#:t "Fáze"]{
    # recruitment
    # ATP depending pumping
    # uvolnění interakce
    # pootočen dalšími faktory (může dojít k rozpadu celého nukleozomu)
}

◊ls[#:t "ATP-dependent chromatin remodeling complexes"]{
    - známe 4 typy
    - SWI-SNF family
    - INO80 family
        - vícejednotkový
        - základem je hexamer z proteinů Rvb1/Rvb2
        - nemá ATPázovou aktivitu
        - funguje jako stator pro molekulární motor
            - recyklací ATP je schopen se otáčet
            - jsou k tomu potřeba další proteiny, které uchopí nukleozom
    - ISWI family
}