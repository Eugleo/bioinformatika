#lang pollen

◊define-meta[title]{Strukturní biologie buňky}
◊define-meta[header]{zápisy}
◊(define-meta toc #t)
◊define-meta[authors ("Evžen Wybitul" "Kateřina Krausová" "Lucie Drahoňovská" "Terka Čalounová")]

◊title{Struktura makromolekul}

◊lecture[1]

◊em{Další informace též odpovídající část zápisů ze základů bioinformatiky (◊link["../zaklady-bioinformatiky/notes.html#Struktura%20nukleových%20kyselin"]{DNA}, ◊link["../zaklady-bioinformatiky/notes.html#Struktura%20proteinů"]{proteiny}) a také zápisy z ◊link["../biopolymery/notes.html"]{celého druhého předmětu}.}

DNA má několik forem, konkrétně především B, A a Z. Tyto se liší velikostí žlábku, tvarem ribóz a případně orientací báze (synklinální/antiklinální).

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

◊meta{Předpokládají se základní informace o proteinech a o stavbě a složení aminokyselin. Viz popříadě ◊link["../zaklady-bioinformatiky/notes.html#Struktura%20proteinů"]{zápisky z bioinformatiky}.}

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

◊title{Nástroje strukturní biologie}

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
        - čistota proteinu, ligandy, inhibitory, efektory, biologické zdroje, historie vzorku, stabilita proteinu, genetické modifikace, post-translační modifikace, chemické modifikace, isoelektrický bod
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
        - anomální rozptyl: zavedeme těžkyého kovu (Se, Hg), do něj namočíme krystal, pak odhadujeme fázi
}

Všechna PDB data jsou tedy pouze něčí interpretace jejich mapy elektronové hustoty. Proto je také nyní povinnost ukládat strukturní data (tedy přesnou podobu experimentálních dat), aby si každý mohl interpretaci udělat sám.


◊ls[#:t "Rozlišení"]{
    - závisí na kvalitě krystalu a intenzitě RTG záření
    - do jakého úhlu jsme schopni zaznamenat difrakce
    - nejlépe pod 2◊|angs|, neboť poté už hůře vidíme vodíkové můstky
}

◊section{Kryoelektronová mikroskopie}