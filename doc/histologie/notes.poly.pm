#lang pollen

◊define-meta[title]{Histologie}
◊define-meta[header]{zápisy}
◊define-meta[toc]{true}
◊define-meta[authors ("Evžen Wybitul" "Lucie Drahoňovská" " Kateřina Krausová")]

◊title{Úvod}

Histologie je nauka o tkáních. Díky novým typům značení, pokroku v molekulární genetice a novým vizualizačním technikám se histologie, ač by to tak na první pohled nevypadalo, stále řadí k dynamicky se rozvíjejícím oborům.

Jeden příklad za všechny, mechanismus šedivění vlasů. Melanocyty, které jsou nahrazovány z kmenových buněk, vyrábí melanin, který předávají keranocytům. To způsobí obarvení vlasu. Pokud však kmenové buňky vymřou, nedojde k vytvoření pigmentových buněk, tudíž vlas ztrácí pigmentaci. To nastane, je-li protein Bcl-2 na vnější mitochondriální membráně inaktivovaný.

◊ls[#:t "Typy tkání"]{
    - epitelové
    - pojivové
    - svalové
    - nervové
}

◊title{Metody zkoumání}

◊ls{
    - histochemické techniky
        - specifické barvení
        - nespecifické barvení
            - získání kyselé a zásadité struktury buněk
    - enzymatická histochemie
        - některé enzymy jsou odolné vůči fixaci a řezání
            - přidání bezbarvého substrátu => po reakci s enzymem se obarví
    - imunohistochemie
        - použití ◊em{sekundárních protilátek}, protilátek proti protilátkám
        - označení fluorem => vznik nerozpustného produktu => klasická mikroskopie
    - imunocytochemie
        - pomocí protilátek detekujeme jednotlivé buněčné struktury
}

◊section{Příprava vzorku}

◊subsection{Odběr tkáně}

◊definitions{
    ◊term["biopsie"]{
        Odběr vzorku z živého organismu.
    }

    ◊term["nekropsie"]{
        Odběr vzorku z mrtvého organismu.
    }
}

◊subsection{Fixace}

◊ls{
    - nutná, jinak se vzorek sám rozloží (autolýza)
    - zastaví metabolické děje v buňce
        - zpomalením
        - denaturací enzymů
}

◊ls[#:t "Princip funkce"]{
    - fyzikální metody
        - teplo
            - denaturace proteinů způsobujících autolýzu
        - zmražení
            - rychlá příprava vzorku
            - není třeba odvodňovat ani prosycovat pryskyřicí
            - je však nutnost zabránit vzniku krystalků vody, např. pomocí kryoprezervans (sacharóza + ethylenglykol/dimethylsulfoxid)
    - chemické metody
        - imerzní
            - ponoření do fixační tekutiny
        - perfúzní
            - nástřik cév
}

◊ls[#:t "Fixační činidla"]{
    - precipitace proteinů
        - chemická denaturace proteinů
        - např. chlorid rtuťnatý, kyselina pikrová
    - denaturace a síťování kovalentních modifikací
        - formaldehyd, glutaraldehyd
        - vazba na ◊chem{NH2} skupiny
    - denaturující a odvodňující preparát
        - alkoholy
        - vysoce koncentrující metanol, etanol
    - fixační směsi
        - rychlé, dokonalé fixování
        - Bouinův roztok: kys. pikrová, formaldehyd, kys. octová, voda
        - Zenkerův roztok = formaldehyd, dvojchroman draselný, chlorid rtuťnatý, voda
        - roztok glutaraldehydu, formaldehydu
    - elektronová mikroskopie
        - glutaraldehyd + oxid osmičelý
}

Alkohol skvěle fixuje, čím více ethanolu, tím lépe, protože alkohol ve tkáních váže vodu a tkáně tím pádem odvodní.

◊subsection{Odvodnění a projasnění}

◊ls{
    - lázeň se vzestupnou řadou etanolu
    - odvodnění
        - parafíny nejsou mísitelné s vodou => nutnost vodu odstranit
    - prosycení
        - rozpouštědlem zalévacího média
        - xylen, toluen, aceton
}

◊subsection{Zalévání do vosku}

◊ls{
    - zpevnění preparátu
    - rozpouštědlo mísící se s parafínem (xylol)
    - parafíny, pryskyřice, zmražení
}

◊subsection{Krájení}

◊ls{
    - krájí se na tloušťku jedné vrstvy buněk, tedy 4--10◊${\mu}m
    - mikrotomy ("kráječe")
        - mikrotom
        - ultramikrotom
        - vibratom
        - kryomikrotom
            - bez fixace, bez zalévání, bez denaturace
    - řez se dá na podložní sklo, přilepení bílek/glycerin
    - řezání parafínových bločků
        - ocelový nůž
        - plátek na kapku vody na podložním sklíčku => napnutí + rozprostření
    - bločky v pryskyřici
        - skleněný/diamantový nůž
        - řezy mají mezi 0,1 a 0,01◊${\mu}m
    - řezy pro elektronovou mikroskopii
        - řez na kovovou síťku z leptané mědi
}

◊subsection{Barvení}

◊ls{
    - účel: zviditelnění struktur a tkání
    - většina barviv rozpustných ve vodě => je třeba z řezů odstranit vodu
    - většina pozorovaných molekul je nabitých
        - bazofilní struktury
            - kyselé povahy, obsahují záporný náboj
            - DNA, RNA, glykosaminoglykany (ECM, lysozomy)
            - barvení bazickými barvivy
                - toluidinová modř, methylenová modř, hematoxylin
        - acidofilní (◊em{eosinofilní}) struktury
            - jsou zásadité povahy, obsahují kladný náboj
            - cytoplazma, některé typy granul
            - kyselá barviva
                - oranž G, eosin, kyselý fuchsin
    - nejčastěji barvení hematoxylinem a eosinem
        - acidofilní struktury: růžová, červená
        - bazofilní struktury: modrá, černá, purpurová
            - hematoxylin se oxidací mění na haematein
    - fluorescenční techniky
        - paralelně vedle sebe několik různě obarvených struktur => vícebarevný preparát
        - velké množství barviv, všechna se specificky akumulují v jednotlivých organelách
}

◊meta{Není třeba si pamatovat všechny barvy, stačí jen základní rozdělení uvedené výše + hematoxylin, eosin, giemsa a oranž.}

◊ls[#:t "Běžné barvy"]{
    - giemsa
        - krevní roztěry
    - PAS barvivo
        - důkaz záporně nabitých makromolekul
        - muciny, GAG, sacharidy, polysacharidy, glykolipidy
    - Nisslova substance
        - nervové buňky
        - neuronové a gliové sítě modřed
    - AZAN
        - kombinace několika barviv
        - azokarmín: červená jádra
        - anilínová modř: modrá kolagenní vlákna a mucin
        - oranž G: oranžová cytoplasma a svaly, červené erytrocyty
    - Weigert-van Gieson
        - Weigertův hematoxylin: šedá jádra
        - saturnová červeň: červená kolagenní vlákna
        - kyselina pikrová: žlutá cytoplasma a svalovina
    - žlutý Massonův trichrom
        - hematoxylin: modrá až černá jádra
        - erythrosin: červená svalovina
        - šafrán: žlutá kolagenní vlákna, červené erytrocyty
    - zelený Massonův trichrom
        - hematoxylin, kyselý fuchsin
        - světlá zeleň: zelená kolagenní vlákna, červené erytrocyty
    - Weigert resorcin-fuchsin
        - resorcin fuchsin: fialová elastická vlákna
    - Heidenhainův železitý hematoxylin
        - modrá až černá jádra a cytoplasma
        - barvení svalů
        - průkaz parazitů v tkáních
    - impregnace stříbrem
        - hnědá až černá kolagenní a retikulární vlákna
        - barvení neuronů a glií
        - barví s vysokým prostorovým rozlišením
    - kresylvioleť
        - fialová DNA, RNA
        - jádro, jadérko, granulární ER
}

◊ls[#:t "Barva na vitální barvení"]{
    - neutrální červeň
        - neprotonovaná bezbarvá, permeabilní do buněk
        - protonovaná se obarví červeně => nemůže projít membránou
        - protonace např. v lysozomech
    - Janusova zeleň
        - neoxidovaná bezbarvá, permeabilní do buněk
        - obarvování mitochondrií
}

◊section{Histochemie}

◊ls{
    - využití chemických reakcí k vizualizaci struktur
    - vznikající produkty
        - nesmí difundovat z místa vzniku
        - musí být nerozpustné, barevné nebo elektrodenzní
    - metoda musí být specifická
    - fixace nesmí blokovat funkční skupiny nebo zničit funkci prokazovaných enzymů
}

◊ls[#:t "Histochemické detekce"]{
     - železo
        - Perlsova reakce: tvorba tmavomodré sraženiny ferokyanidu železitého
        - odhalení hemochromatózy, hemosiderózy
    - fosfáty
        - dusičnan stříbrný, fosforečnan stříbrný redukován na černý precipát stříbra (hydrochinonem)
        - studium osifikace
    - DNA
        - Feulgenova reakce: hydrolýza DNA pomocí HCl
        - Schiffovo činidlo: volné aldehydové skupiny reagují s fuchsinem
    - proteiny
        - imunocytochemické metody
        - polysacharidy, oligosacharidy
            - PAS reakce: oxidace kyselinou jodistou
            - aldehydové skupiny reagují s fuchsinem => purpurová sraženina
        - glykolipidy, glykoproteiny
            - značené lektiny
    - enzymy
        - kyselé fosfatázy
            - Gomoriho metoda: fixace formalinem, inkubace s glycerolfosfátem sodným + dusičnanem olovnatým -> fosfátové ionty -> nerozpustný elektrodenzní fosforečnan olovnatý (lysozymy)
        - dehydrogenázy
            - Tetrazolium: reakce na barevnou sraženinu formazanu
        - detekce mitochondrií
        - peroxidáza
        - DAB 3'-diaminbenzen: vznik z peroxidu vodíku pomocí peroxidázy
        - hnědé zbarvení

}

◊ls[#:t "Průkazové reakce"]{
    - imunocytochemie
    - lektinová histochemie, hybridizace in situ
    - metabolické radioaktivní značení, neboli elektromikroskopická autoradiografie
}

◊ls[#:t "Propojení elektronové mikroskopie a autoradiografie"]{
    - k buňkám se přidá radioaktivně značený leucin
    - leuxcin se zabuduje do proteinů
    - sledování putování nově syntetizovaných proteinů
}

◊section{Mikroskopie}

Oko rozpozná 100◊${\mu}m, světelný mikroskop 100nm, elektronový i rozměry pod 1nm.

◊ls[#:t "Světelná mikroskopie"]{
    - sledování in vivo
    - digitalizace dat
    - mnohobarevná detekce
    - konfokální mikroskop
        - detekce světelného signálu z jedné roviny zaostření bez kontaminace signálem nad a pod rovinou zaostření
}

Sledovat in vivo se dá i na tomografii, případně NMR.

◊ls[#:t "Elektronová mikroskopie"]{
    - detekce elektronů
    - optika je elektromagnetické povahy
    - černobílé obrázky, ale exsituje možnost obarvení
    - typy
        - skenovací EM: svítíme na pokovený objekt, detekujeme, co se odrazí
        - transmisní EM: objekt prosvěcován elektrony, detekujeme jejich rozptyl
            - bez nutnosti barvení, schopni rotovat, prozařovat pod různými úhly
}

◊ls[#:t "Průtoková cytometrie"]{
    - stroj schopný navázat suspenzi buněk (mohou být fluorescenčně značené)
        # svítíme laserem
        # zjišťujeme, která buňka je pozitivní pro konkrétní fluorescenci a svítí
    - slouží k rozlišení buněk v krvi, tím, že se rozpadnou na jednotlivé populace
}

◊ls[#:t "Laserová mikrodisekce"]{
    # v preparátu najdeme útvar, který nás zajímá
    # laserem tento útvar vyřízneme
    # laserem se poté vystřelí do detekční nádoby
}

◊ls[#:t "Gene arrays"]{
    - studium celkové expresní aktivity
    - určení buněčných typů, pomocí izolace RNA přepsané do fluorescenčně značené DNA
        # hybridizace na sklíčkách
        # imobilizace sekvencí specifických pro konkrétní geny
        # soubory barevných teček
        # vyplý/zaplý gen
}

◊title{Epitely}

Epitely jsou tkáně tvořené buňkami s různým tvarem a funkcí, které jsou mezi sebou pevně spojeny pomocí mezibuněčných spojů. Vystýlají povrch sliznic a vnitřek dutin. Sedí na bazální lamině, jsou polarizovány.

◊ls[#:t "Funkce epitelu"]{
    - krytí a vystýlání povrchů, kůže, sliznice
    - absorpce, střevo
    - sekrece, žlázy
    - recepce, neuroepitel
    - stažlivost, myoepiteliální buňky
    - resorpce, v rohovce (jediný takový epitel)
        - aby v ní nebyla voda a my dobře viděli
    - dokáží fungovat jak svalové buňky, produkují myozin a aktin
        - např. myoepitelové buňky mléčných žláz
}

◊section{Stavba epitelů}

◊ls[#:t "Druhy epitelů"]{
    - podle vývodu
        - endokrinní žlázy, bez vývodu
        - exokrinní žlázy, s vývodem do lumen
        - sekreční epitely, s vývodem do lumen
    - podle funkce
        - ochranný -> mnohovrstevný, odolný
        - transportní – velké množství kanálů, průchod molekul přes membránu
        - řasinkový -> zajiŠťuje směrovaný pohyb (vajíčko ve vejcovodu)

}

◊definitions{
    ◊term["Blažkovy linie"]{
        Jev, popisující diferenciaci kůže v jednotlivých pásech, které jdou za sebou.
    }
}

◊ls[#:t "Stavba epitelu"]{
    - je polarizovaný
        - bazální
        - apikální
        - bazolaterální
    - pod ním je často pojivová tkáň
    - tvar a velikost záleží na funkci (např. ochrana v jícnu => tlusté, vysoké buňky)
    - odvozen od všech tří zárodečných listů
        - ektoderm: epitelový povrch kůže, ústní a nosní dutina, řiť
        - entoderm: výstelka dýchacího traktu, trávicí trakt, všechny orgány TS
        - mezoderm: endotel (výstelka cév), mezotel (výstelka břišní dutiny, peritoneum)
    - vždy sedí na bazální lamině, což je podpůrná pojivová tkáň
        - ztráta kontaktu s bazální laminou vede k diferenciaci (keratinocyty)
        - schpnost samouspořádání
        - buňky samy epitel vyrábí, nebo vzniká pomocí fibroblastů
        - v bazální lamině jsou přítomny speciální kolageny a fibriny
}

◊section{Krycí epitely}

Krycí kepitely kryjí zevní povrch a vystýlají tělní dutiny.

◊ls[#:t "Klasifikace dle tvaru buněk"]{
    - dlaždicový (plochý)
        - výstelka cév (endotel)
        - výstelka serózních dutin (perikard, pleura, peritoneum)
        - rohovka
    - kubický
        - povrch ovária
        - štítná žláza
    - cylindrický
        - výstelka střev, žlučníku
}

◊ls[#:t "Klasifikace dle počtu vrstev"]{
    - jednovrstevný
    - vrstevnatý
        - dlaždicový rohovějící
            - kůže: na povrchu tenké šupinky odumřelých buněk
        - dlaždicový nerohovějící
            - vlhké dutiny – ústa, jícen, pochva
            - živé buňky
        - kubický
            - vzácný
            - potní žlázy
            - vyvíjející se ovariální folikuly
        - cylindrický
            - vzácný
            - spojivka
            - vývody velkých žláz
        - přechodný
            - močový měchýř
            - močovod, kde se tvar buněk mění podle rozpětí měchýře
            - využití v tkáňovém inženýrství: pytlíček z bazální laminy porůst buňkami měchýře s vysokým obsahem kmenových buněk
        - víceřadý
            - některé buňky jsou zakotveny v bazální lamině, nedosahují povrchu
            - s řasinkami v dýchacích cestách
        - neuroepitel
            - senzorické funkce
            - buňky chuťových pohárků
            - čichový epitel
        - myoepitel
            - větvené buňky specializované na kontrakci
            - mléčné, potní, slinné žlázy
}

◊ls[#:t "Nádory"]{
    - u všech buněk kromě červených krvinek (nemají jádro, nemnoží se) a neutrofilních granulocytů (skoro před smrtí)
    - do 10 let nejčastěji nádory krvetvorné tkáně
    - po 45. roce je 90% nádorů odvozených od epitelů
}

◊definitions{
    ◊term["karcinomy"]{
        Nádory odvozené od epitelu.
    }

    ◊term["adenokarcinomy"]{
        Nádory odvozené od epiteliálních žláz.
    }

    ◊term["metaplázie"]{
        Změna buněčného typu během života. Například u silných kuřáků se řasinkový pseudostratifikovaný epitel mění v stratifikovaný deskovitý, který poté správně neodvádí hlen. Reparace takového procesu je velice složitá.

        Další příklad: při nedostatku vitaminu A nastane ztráta diferenciační informace pro řasinkové epitely v průdušnici a močovém měchýři, které poté přestanou fungovat jako pružné jednotky.
    }
}

Kromě metaplázovaných epitelů mají ale jinak epitely velice dobrou schopnost reparace.

◊section{Žlázové epitely}

◊ls{
    - buňky specializované na tvorbu sekretů
    - jednobuněčné žlázy
        - pohárkové buňky (výstelka tenkého střeva)
        - dýchací trakt
    - mnohobuněčné žlázy
        - vývoj z krycích epitelů proliferací a invazí do okolního vaziva
}

◊ls[#:t "Typy žláz"]{
    - exokrinní
        - zachováno spojení s povrchovým epitelem
        - tubulární vývod je vystlaný epitelem
        - např. žlučové vývody, slinivka
    - endokrinní
        - postrádají vývod, sekret je roznášen krevním řečištěm
        - slouží např. pro přenos hormonů
}

Některé orgány jsou jak exokrinní, tak endokrinní
◊ls{
    - játra: žluč (exokrinní), transferin + albumin (endokrinní)
    - pankreas: trávicí enzymy (exokrinní) + inzulin + glukagon (endokrinní)
}

◊subsection{Exokrinní žlázy}

◊ls[#:t "Dělení podle stavby"]{
    - podle větvení vývodů
        - jednoduché žlázy, mají jeden nerozvětvený tubulózní vývod
            - stočené tubulózní, větvené tubulózní, acinózní (alveolární)
        - složené žlázy, mají větvené vývody
        tubulózní, acinózní, tubuloacinózní (tuboalveolární)
    - podle tvaru
        - acinózní, kulatý tvar a úzké lumen
        - tubulózní, tvar trubice a úzké lumen
        - alveolární, tvar měchýřku a široké lumen
        - tuboacinózní,  tvar trubice s kulatým koncem (ve žlázách smíšeného typu)
        - tuboalveolární, tvar trubice s měchýřkovitým rozšířením (ve žlázách smíšeného typu)
}

◊ls[#:t "Dělení podle typu vylučování"]{
    - merokrinní žlázy
        - jsou exocytována sekreční granula
        - např. pankreas
    - holokrinní žlázy
        - sekreční produkt je uvolněn s celou buňkou, buňka naplěná sekretem zanikne
        - např. mazové žlázy
    - apokrinní žlázy
        - přechodný typ
        - sekreční produkt je odloučen zároveň s apikální částí cytoplasmy
        - látky neobalené membránou: tukové kapénky v tukových buňkách a mléčných žlázách
        - uzavřou se do váčků a oddělí se buňky
        - odvrhování apikální části buněk probíhá v sítnici
}

◊box["Poznámka"]{
    Sekrece mléka v mléčnách žlázách je regulována oxytocinem, který aktivuje myoepitální buňky, ty se stáhnou a mléko je vylučováno ze žlázy. Pro mléčnou žlázu existují kmenové buňky, takže ji můžeme de novo vytvořit.
}

◊ls[#:t "Dělení podle charakteru sekretu"]{
    - serózní žlázy, které mají sekret řídký a bohatý na proteiny
        - obsahuje buňky bohaté na granulární endoplazmatické retikulum, což způsobuje jejich bazofílii
    - mucinózní žlázy, které mají sekret hustý a plný mucinu
        - tvar sekrečního oddílu je tubulózní
}

◊section{Jednotlivé tkáně}

◊subsection{Kmenové buňky}

◊ls{
    - udržování kmenovosti souvisí s vazbou na jiné buňky
        - po opuštění niky dochází k diferenciaci
    - po ztrátě kontaktu s bazální laminou se odlupují a apoptizují
}

◊definitions{
    ◊term["niky"]{
        Receptory udržující buňky v nediferencovaném kmenovém stavu.
    }
}

◊ls[#:t "Kmenové buňky v kostní dřeni"]{
    - stromální buňky vytváří jeskyňky
        - nediferencované mezenchymální a hematopoetické kmenové buňky
}

◊ls[#:t "Kmenové buňky ve střevě"]{
    - z jedné kmenové buňky lze diferencovat všechny epiteliální buňky
    - v tenkém střevě jsou ve vychlípeninách
        - směrem dolů diferencují do Pannetových buněk
        - směrem nahoru diferencují ve žlázy a v resorpční epiteliální buňky
}

◊ls[#:t "Kmenové buňky v kůži"]{
    - kmenové buňky nejblíže jsou povrchu pokožky
    - během diferenciace sestupují do údolíček
    - během keratinizace jsou vytlačovány vzhůru
}

◊ls[#:t "Kmenové buňky v mléčné žláze"]{
    - jsou lokalizovány na povrchu ve směru růstu žlázy
}

◊subsection{Endoteliání buňky a cévy}

Velikost jednotlivých buněk v endotelu závisí na jejich ploidii.

◊definitions{
    ◊term["endotel"]{
        Epiteliální tkáň tvořící vnitřní stěnu cév.
    }

    ◊term["angiogeneze"]{
        Vznik nových kapilár větvením.
    }
}

◊ls[#:t "Dynamika endoteliálního systému"]{
    - moc kyslíku => některé kapiláry se uzavřou
    - málo kyslíku (hypoxie) => vyšle se signál pro vznik nových cév
        - vznikne slepá větvička, ta roste, až si tepna najde žílu
        - zvýšení koncentrace HIF (hypoxia inducible factor)
            - je to protein, který se při nízké koncentraci kyslíku přestává odbourávat
        - stabilizace HIFu regulována ubiquitinilací
        - zvýšená koncentrace HIF vede k produkci VEGF (vascular endothelial growth factor)
}

◊subsubsection{Cévy}

◊ls{
    - složeny z endoteliálních buněk, z extracelulární matrix a ze svaloviny
    - složení: tunica intima (endotel), tunica media (svaloviny) a z tunica adventitia (pojivo)
    - poměry těchto vrstev závisí na druhu cévy
        - kapilárky z endotelu
        - propustnost kapilár
            - nepropustná: kontinuální buňka a kontinuální bazální lamina
            - „děravá“ (fenestrovaná): bazální lamina je jemnější sítko, větší částice neprojdou
            - zcela nepropustná: mozek, uspořádání buněk je zodpovědné za intaktnost ◊link["#Hematoencefalická bariéra"]{hematoencefalické bariéry}
}

◊ls[#:t "Vznik"]{
    - běžně růstem už vzniklých trubiček
    - in vitro
        # uvnitř endoteliální buňky začne vznikat systém vakuol
        # vakuoly se pospojují
        # vznikne dutá struktura, která je schopná se spojit s jinými trubičkami
        # vznik cévní sítě
}

◊ls[#:t "Chlopně"]{
    - nalézají se v některých žilách
    - deriváty endotelu vybíhajícího do lumen
    - zabraňují zpětnému toku krve
    - jsou pouze v malých a středně velkých žilách
}

◊ls[#:t "Spojení žíly a tepny"]{
    - nutnost zabránit homotypické adhezi
    - ke spojení nutné ◊em{ephriny}, což jsou molekuly tvořící se při diferenciaci nervové soustavy
        - arterie obsahují ephrin-B2
        - žíly obsahují ephrin-B4
}

◊subsubsection{Patologie}

◊ls[#:t "Hippel-Landauův syndrom"]{
    - vznik nádorů tvořených hyperproliferovanými endoteliálními buňkami (◊strong{hemangioblastomy})
    - pro vazbu ubiquitinu je v HIF běžně ubiquitinylační sekvence
        - tato sekvence zmutuje, v důsledku čehož se nemůže navázat na ubiquitin
        - HIF se nedegraduje, neustále se produkuje VEGF
        - stále se aktivuje proliferace a probíhá tvorba nových výběžků
}

◊ls[#:t "Atheroskleróza"]{
    - nedochází k ukládání cholesterolu do stěn cév
    - průběh
        # zánět v těle nebo volné radikály způsobí oxidaci LDL, časem už normálně oxidovaná forma LDL v těle není
            - LDL (low-density lipoprotein) jsou částice zodpovědné za přenos cholesterolu
        # buňky nedokážou oxidovaný LDL metabolizovat, LDL se v nich hromadí
        # nastoupí monocyty, které endocytují oxidovaný LDL, ale neodbourají ho
        # LDL se hromadí v monocytech, vznikají pěnovité buňky plné vakuol naplněné oxidovaným LDL
        # monocyty spustí expresi genů, aktivují makrofágy (přilákají buňky "opraváře")
        # to vede k produkci mezibuněčné hmoty pomocí mezenchymálních buněk a fibrocytů (fibroblasty)
            - fibroblasty jsou schopny diferencovat v osteocyty, osteoblasty a chondroblasty
        # vznikají hrbolky kosti v cévě, která tím ztrácí svou mechanickou odolnost
}

◊subsection{Kůže}

◊ls{
    - největší orgán těla, tvoří 16% hmotnosti
    - musí být mechanicky odolná
        - extracelulární matrix (ECM) je syntetizovaná fibroblasty
    - musí být krevně zásobená
        - systém krevních kapilár ohraničených endoteliálními buňkami
        - obsahuje buňky imunitního systému
            - při zánětu makrofágy, granulocyty a lymfocyty
}

◊ls[#:t "Vrstvy kůže"]{
    - epidermis
    - dermis
        - silně vaskularizovaná a inervovaná
    - hypodermis
        - tuková tkáň
}

Kromě zmíněných vrstev se v kůži nalézají též senzory a nervová zakončení.

◊ls[#:t "Fibrocyt"]{
    - diferenciační prekurzor fibroblastu
    - fibrocyt může diferencovat ve fibroblast, chondrocyt, hladkou svalovinu, tukovou buňku
    - změna fibroblastu na tukovou buňku provázena změnou exprese genů
    - fibroblasty vytváří desmozomy s jinými fobroblasty => síťovitá struktura
    - fibroblasty spolu s epiteliálními buňkami produkují složky bazální laminy
}

◊ls[#:t "Mezenchymální kmenové buňky"]{
    - mají obrovský diferenciační potenciál
    - dají se kultivovat in vitro v koktejlu růstových faktorů a cíleně diferencovat v různé typy buněk
    - pluripotence: embryonální kmenové buňky
        - dají se izolovat z časného embrya
        - dají se in vitro kultivovat a geneticky manipulovat a poté vrátit do embrya
}

◊subsubsection{Epidermis}

◊ls{
    - jediná z vrstev kůže, která je epiteliálního původu
    - sedí na bazální lamině, nejspodnější vrstvu tvoří keratinocyty
        - v záhybech na bazální lamině jsou kmenové buňky neschopné diferencovat v melanocyty, ale vznikají z nich kerantinocyty
    - je stále proliferována
        # buňky jsou posouvány vzhůru
        # časem jsou buňky dehydratovány a keratinizují
        # takové mrtvé buňky se odloupnou
    - obsahuje melanocyty a Langerhansovy buňky
    - rozdíl mezi bělošskou a černošskou kůží je v pH endozomálního systému (běloši jsou kyselejší)
}

◊ls[#:t "Melanocyty"]{
    - produkují melanin, kterým poté zbarvují okolní buňky
    - ochrana před UV
    - nevznikají v kůži, ale vlezou do ní z ◊link["#Nervové buňky"]{neurální lišty}
    - obsahují ◊em{melanozomy}
        - deriváty lysozomů
        - naplněné melaninem jsou předávány epidermálním buňkám (keratinocytům)
    - mutace
        - málo melanozomových prekurzorů => málo melazosomů => skvrny
        - mutace genu pro kit
            - receptor pro SCF faktor => je na epiteliální buňce v nice => udržuje buňky                     v kmenovém stavu
            - málo kmenových buněk => málo melanocytů
        - mutace v genu Pax3
            - homozygot => ztráta sluchu, depigmentace vlasů, očí, kůže
}

Porucha tvorby melaninu vede k albinismu. Tato porucha může být způsobena poruchou v enzymu tyrozinkináze nebo poruchou regulace pH v melanozomu.

◊ls[#:t "Langerhansovy buňky"]{
    - derivované z kostní dřeně
    - dendritická buňka nesoucí MHC třídy II
    - tvoří jednu vrstvičku rovnoměrně rozloženou pod kůží
    - po pohlcení cizorodých substancí čekají v uzlině na rozpoznání T-lymfocytem, který poté obstará imunitní reakci
}

◊subsection{Neuroepitely}

◊em{Pro více informací viz ◊link["#Nervové buňky"]{oddíl o nervových tkáních} a ◊link["#Senzorické epitely"]{oddíl o senzorických epitelech}.}

◊ls{
    - mají rozdílnou schopnost regenerace a rychlost obměny buněk
        - senzorický neuroepitel ve středním uchu ani ten na sítnici není schopen regenerace (máme ho jednou pro vždy)
        - čichový epitel prochází neustálou obměnou
            - je epidermálního původu
            - pro detailnější popis tkáně viz ◊link["#Čichový epitel"]{oddíl o čichovém epitelu}
}

◊section{Patologie}

◊ls[#:t "Kartagenův syndrom (situs inversus)"]{
    - první popsaný případ v roce 1688
     - převrácená pravolevá symetrie vnitřních orgánů
    - 50% jedinců trpí chronickou bronchitidou a sterilitou
        - způsobena mutací v molekulárním motoru zajišťujícím pohyb řasinek v řasinkovém epitelu
}

◊ls[#:t "Průjem"]{
    - porucha funkce resorpčních epitelů trávicí soustavě
    - u dospělého člověka je za jeden den sekrece sedmi litrů tekutin
        - 1l slin
        - 1,5l trávicí tekutiny v žaludku
        - 1l žluči
        - 1,5l trávicí tekutiny ze slinivky
        - 2l sukusu (všemožné tekutiny vylučované živými tkáněmi)
    - resorpce tekuni ve střevě
        - 7,8l v tenkém střevě + dvanáctníku
        - 1l v tlustém střevě
    - 0,2l ztrácíme stolicí
}

◊ls[#:t "Cystická fibróza"]{
    - druhá nejčastější genetická porucha (po poruše konexinu vedoucí k poruše sluchu)
    - způsobená mutací proteinu CFTR, který přenáší chloridové ionty ven z buněk
        - ve zdravé buňce dochází vylučování chloridových iontů
            - spolu s ionty opouští buňky voda
            - dochází ke zvlhčení epitelů a sliznice
        - v nezdravé buňce k tomu nedochází, sliznice jsou suché, hleny jsou husté
    - trpí jí jeden člověk z 2500
}

Existují i určité poruchy mechanických vlastnosí kůže, které jsou způsobeny hlavně mutacemi v genech pro keratiny.

◊title{Pojivová tkáň}

◊ls{
    - je tvořena různými buněčnými typy
    - má rozmanitou strukturu, funkci i tvar
    - produkuje velké množství ECM sekretorickou drahou (často více ECM než buněk)
    - vazivo, chrupavky, kosti, tuková tkáň, krev
}

◊section{Vazivo}

◊ls{
    - řídké, ◊em{areorální}
        - spojuje tkáně mezi sebou
        - vyplňuje prostory, zpevňuje epitely, obaluje lymfatické a krevní cévy
        - ve žlázách, sliznicích, dermis
        - kolagenní, elastická i retikulární vlákna
    - husté
        - převládají kolagenní vlákna
        - neuspořádané
            - svazky kolagenu bez určité orientace
            - např. dermis (podkoží)
        - uspořádané
            - orientované podle stejnosměrných mechanických podnětů
            - např. šlachy
}

◊ls[#:t "Extracelulární matrix (ECM)"]{
    - hlavní složkou kolagen různých typů
    - epitel není vaskularizovaný, pod epitelem je pojivová tkáň
        - velké množství buněk imunitního systému, především bazofilů
}

◊ls[#:t "Retikulární pojivová tkáň"]{
    - houbovité uspořádání s volnými prostory uvnitř
        - v místech, kde jsou třeba malé dutiny
    - fibroblasty produkují ECM pomocí extracelulárních vláken
        - tvoří architektonickou kostru krvetvorných orgánů (kostní dřeň, uzliny, slezina) z retikulárních buněk
}

◊ls[#:t "Vaziva se speciálními vlastnostmi"]{
    - elastická vaziva
        - žluté vazy páteře, závěsný vaz penisu (ligamentum suspensorium penis)
    - rosolovité vazivo
        - amorfní hmota, tvořená kyselinou hyaluronovou
        - rosolovitá konzistence jako výplň
        - základní složka pupeční šňůry, v pulpách vyvíjejících se zubů
    - tukové vazivo
    - hemopoetická tkáň
        - lymfatická a myeloidní tkáň
}

◊section{Tuková tkáň}

◊ls{
    - jeden z největších orgánů v těle
        - muži: 15--20% hmotnosti
        - ženy: 20--25% hmotnosti
    - hormonálně aktivní orgán
    - vysoce inervovaná a vaskularizovaná
    - po extrémním zhubnutí zůstane na ploskách nohou
    - dělí se na žlutou a hnědou
}

◊ls[#:t "Funkce tukové tkáně"]{
    - tvaruje povrch těla
    - tlumí nárazy
    - tepelná izolace
    - vyplňuje prostory
    - zásobárna energie
    - produkce tepla
}

◊ls[#:t "Žlutá tuková tkáň"]{
    - unilokulární --- v každé buňce jen jedna centrálně uložená tuková kapénka (pokud nehladovíme)
        - nemá membránu
        - je formována hydrofobními interakcemi
    - barva od bílé po tmavožlutou
    - rozsah: všude mimo očních víček, penisu, skrota (šourku) a ušního boltce
    - je rozdělena vazivovými přepážkami do neúplných lalůčků
    - vzniká diferenciací z mezenchymálních buněk
    - existují oblasti s aktivní inhibicí tvorby tukové tkáně
}

◊ls[#:t "Hnědá tuková tkáň"]{
    - multilokulární --- mnoho drobných tukových kapének
    - má mnoho mitochondrií, a tedy hodně cytochromu b, z čehož plyne její hnědé zbarvení
    - připomíná endokrinní žlázu
    - buňky jsou inervovány sympatikem
    - slouží k produkci tepla (netřesová termogeneze)
        # pokud je chladno, uvolní se norepinefrin
        # aktivuje se senzitivní lipáza
        # tuky jsou hydrolyzovány na triacylglyceridy
        # protonový gradient v mitochondriích je díky UCP (uncoupling proteinu) transformován v teplo
    - novorozenec ale využije protonový gradient k výrobě ATP a teplo vyrábí třesovou termogenezí
    - u novorozence 2-5% hmotnosti
}

◊ls[#:t "Regulace množství tukové tkáně"]{
    - čím více tukové tkáně, tím více proteinu leptinu tělo produkuje
    - leptinový receptor je v hypokampu (centrální centrum hladu a sytosti)
    - lidé jedí více, když je málo leptinu
        - leptin je tedy negativní regulátor velikosti tukové tkáně
}

◊ls[#:t "Nádory tukových tkání"]{
    - unilokulární adipocyty
        - benigní tumory lipomy
            - kuličky hypertrofované tukové tkáně
            - díky vazivovému obalu snadné odstranění
        - maligní tumory liposarkomy
    - multilakulární adipocyty
        - hibernomy
            - hypertrofovaná multilokulární tuková tkáň
            - poruchy produkce tepla
}

◊section{Chrupavka}

◊ls{
    - mezibuněčná hmota nabývá pevné konzistence
    - není inervovaná ani vaskularizovaná
        - nemůže bolet
        - je živena difúzí z přilehlé vazivové tkáně (perichondria)
    - růst chrupavky
        - buňky jsou zalité v ECM, to jim umožňuje růst a dělení (v omezené míře)
            - čtyři buněčná dělení maximálně osmi buněk v lakunách (malých kanálcích)
}

◊todo{Jakým způsobem je omezeno dělení?}

◊ls[#:t "Funkce"]{
    - podpora měkkých tkání
    - tlumí nárazy
    - umožňuje hladký klouzavý pohyb kostí
    - zásadní pro vývoj kostí
}

◊ls[#:t "Složení"]{
    - ECM
    - glykosaminoglykany
    - proteoglykany orientované na kolagenních a elastických vláknech
    - chondrocyty
}

◊ls[#:t "Chondrocyty"]{
    - buněčná složka chrupavky
    - vznikají diferenciací z buněk na povrchu chrupavky
    - tvoří a obalují EK, tím se dostávají dovnitř do chrupavky
        - nalézají se ◊em{v lakunách} v tzv. isogenetických skupinkách
    - odolávají nízkému parciálnímu tlaku kyslíku
        - jsou často vystaveny nedostatku kyslíku
}

◊todo{Zjistit, co je EK.}

◊ls[#:t "Chondroblasty"]{
    - jedny z mála buněk schopné přežít v jedinci i po smrti
    - fungují díky anaerobní glykolýzy
    - jejich proliferace je ovlivňována růstovými faktory
        - ◊em{somatotropin} spouští produkci somatomedinu v játrech
        - nedostatek způsobuje metaplázii chrupavek
}

◊ls[#:t "Typy chrupavek"]{
    - hyalinní
        - nejběžnější
        - kolagen (40% suché váhy, hlavně typu II), chondroitin-6-sulfát, keratan sulfát, chondronektin
        - modravě bílá a průsvitná
        - v zárodku vytváří dočasný skeleton, který je nahrazen kostní tkání
        - naoř. artikulační plochy pohyblivých kloubů, nos, hrtan, trachea, bronchy, přední konce žeber
    - elastická
        - ohebná, roztažitelná
        - nažloutlá barva
        - velké množství elastinových vláken, kolagen
        - např. ušní boltec, stěny zevního zvukovodu, Eustachova trubice, drobné chrupavky hrtanu
    - vazivová
        - kolagen typu I
        - je především v místech s velkými nároky na mechanickou odolnost a zátěž
        - např. přechod mezi hustým vazivem a hyalinní chrupavkou: meziobratlové ploténky, spona pánevní, úpony některých vazů
            - výhřez meziobratlové ploténky (ruptura anulus fibrosu)
                # vypuzení tekutého pulpózního jádra
                # oploštění celého fibrózního prstence
                # dislokace
}

◊ls[#:t "Patologie"]{
    - benigní nádory (chondromy)
    - maligní nádory (chondrosarkomy)
    - kalcifikace (zvápenatění)
    - záněty perichondria
    - špatná regenerace v dospělém věku
    - achondroplázie
        - z 99% je příčina v mutaci genu pro FGF-receptor-3
        - ovlivňuje vývoj chrupavek v dlouhých kostech
}

◊section{Kost}

◊ls{
    - nejodolnější vůči mechanickým stresům
    - hlavní část skeletu dospělce
    - specializovaná pojivová tkáň tvořená zvápenatělou mezibuněčnou hmotou
        - kostní matrix + osteocyty + osteoblasty + osteoklasty
    - odvápněná kost má tvar a ohebnost srovnatelnou se šlachou
}


◊ls[#:t "Funkce"]{
    - opora měkkým tkáním
    - chrání krvetvorné orgány, mozek, míchu
    - zásobárna vápníku, fosfátu
}

◊img["kost.png"]{Schematický obrázek kosti}

◊ls[#:t "Stavba a složení"]{
    - látkové složení
        - 70% anorganické složky
            - krystaly solí, hydroxyapatit
        - 20% organické složky
            - 90% kolagen, z něj 90% kolagen I
        - 10% voda
    - klíčové kostní proteiny: sialoprotein, osteokalcin, osteonektin
    - topologické složení
        - kost je síťovina osteocytů pospojovaných výběžky, které jsou propojeny přes gap junctions
        - tato síťovina je koncentricky uspořádána do lamel kolem centrálního Haversova kanálku s cévami a nervy
        - Haversovy kanálky jsou propojeny příčnými Volkmanovými kanálky, které přivádí cévy
        - osteon roste dovnitř
        - Haversovy kanálky jsou rovnoběžné s hlavní osou diafýzy
    - periost je vrstva na povrchu kosti
        - složen z kolagenních vláken a fibroblastů
        - tvoří vnitřní vrstvu osteoprogenitorové buňky
        - účel: výživa kostní tkáně, kontinuální přísun nových osteoblastů
    - endost vystýlá vnitřní povrch kostních dutin
        - je v něm uložena vrstva osteoprogenitorových buněk
        - účel: výživa kostní tkáně, kontinuální přísun nových osteoblastů

}

◊ls[#:t "Typy kostní tkáně"]{
    - primární nezralá vláknitá kost, sekundární zralá lamelózní kost
    - kompaktní kost (diafýza), spongiózní kost (epifýza)
    - krátké kosti jsu tvořeny spongiózním jádrem obklopeným kompaktní diafýzou
        - dutiny spongiózní kosti tvoří kostní dřeň
            - červená je krvetvorná
            - žlutá obsahuje tukové buňky
    - ploché kosti lebeční klenby jsou tvořeny dvěma lamelárními kompakty oddělenými vrstvou spongiózní kosti (diploe)
}


◊ls[#:t "Remodelace kostí"]{
    - kost se neustále přestavuje
    - u dětí je remodelace 200◊${\times} rychlejší než u dospělých
    - za týden se odbourá 5--7% kostní hmoty
    - houbovitá část je obnovována jednou za 3--4 roky
    - kompaktní část je obnovována jednou za 10 let
    - resorpce je regulována osteoklasty
}

◊subsection{Kostní buňky}

◊ls[#:t "Osteoblasty"]{
    - vznik z mezenchymálních buněk
    - po uhnízdění se mění v osteocyty
    - tvoří organickou ECM
    - provádí syntézu kolagenu I, proteoglykanů, glykoproteinů
    - lokalizovány výhradně na povrchu kosti, těsně vedle sebe jako jednovrstevný epitel
    - kontakt s ostatními buňkami skrz výběžky
        - poté jsou zality v ECM a změní se v osteocyt
    - do nově založené mineralizované kostní matrix se váže tetracyklin
        - měření výstavbové aktivity kosti
        - testovanému jedinci se podává 5 dní, vznikají výbrusové preparáty
}

◊todo{Zjistit, co se podává testovánemu jedinci.}

◊ls[#:t "Osteocyty"]{
    - vznik z osteoblastů
        - uzavřeny v kosterní hmotě
    - zaniknou, když převáží resorpce matrix
    - jednotlivě uloženy v lakunách mezi lamelami matrix
    - výběžky jsou propojeny gap junctions
    - mají tvar broušeného diamantu
    - zality v ECM, následně mineralizují
        - jsou odpovědné za mineralizaci kostí
}

◊ls[#:t "Osteoklasty"]{
    - vznik fúzí monocytů nebo makrofágů
    - obrovské mnohojaderné buňky (i přes 100◊${\mu}m) s 5--50 jádry
    - jsou bohatě větvené, pohyblivé
    - resorbují kostní hmotu
    - podílejí se na přestavbě kosti
    - extracelulárně snižují pH a naleptávají kostní osteon (Haversův systém)
        - v místě resorpce vznikají enzymaticky vyleptané prolákliny v matrix, tzv. ◊em{Howshipovy lakuny}
}

◊subsection{Osifikace}

◊ls[#:t "Osifikace"]{
    - vývoj kostních buněk: mezenchymální buňka -> chondroblast -> chondrocyt
    - dělení
        - intramembranózní
            - ve vazivu, kost vzniká přeměnou chrupavky
                - probíhá přímá mineralizace matrix produkované osteoblasty
            - ploché, krátké a dlouhé kosti do šířky
        - endochondrální osifikace
            - vznik dlouhých a krátkých kosti
            - kost vzniká náhradou chupavky
                - probíhá ukládání kostní matrix a anorganických složek na předem vytvořenou matrix chrupavky
     - vhodné prostředí zajišťují mezenchymální buňky a fibroblasty
    - kost může po splnění určitých podmínek vzniknout kdekoli v těle
    - chrupavka může také osifikovat (speciální případ metaplazie)
        # v chrupavce je zánět
        # je vyslán signál nebezpečí k cévám
        # cévy vysílají výběžky do chrupavky, směrem k zánětu, aby jej odstranily
        # chrupavka je transformována v kost
}

Počet osteoklastů zvyšuje parathormon. Při velkém množství parathormonu tedy dochází k odbourávání kosti, k osteoporóze a k následnému uvolnění ◊chem{Ca^{2+}} do krve. Naopak kalcitonin resorpci matrix inhibuje.

◊ls[#:t "Průběh intramembranózní osifikace"]{
    # nahromadění mezenchymálních buněk
    # vznik primárního osifikačního centra
    # diferenciace v osteoblasty
    # tvorba kostní matrix
    # uzavírání části vaziva
    # radiální růst center, a jejich finální splynutí
}

◊ls[#:t "Průběh endochondrální osifikace"]{
    # destrukce chondrocytu
    # osteoprogenitorové buňky se přesouvají do lakun
    # tyto buňky poté vrůstají do periostu
    # tvorba kostní matrix
}

◊subsection{Patologie}

◊ls[#:t "Zlomeniny"]{
    - kost praskne
    - mutace ovlivňující poměr odbourávání a budování kostní hmoty
        - důsledkem např. osteopetróza, osteoporóza
    - průběh zloměniny
        # po zlomení se aktivují osteoblasty, namnoží se
        # osteblasty oudělají houbovitou kost
        # houbovitá kost je postupně přestavena v kompaktní kost
    - krátké kosti se hojí špatně, zatímco dlouhé jsou na mechanické změny zvyklé
}

◊ls[#:t "Poruchy kostní tkáně"]{
    - rachitis
        - nedostatek vápníku u dětí, je narušen osifikační proces
    - osteomalacie
        - nedostatek vápníku u dospělých (těhotenství), měknutí kostí
    - osteoporóza
        - rozpad kostní hmoty (přílišná aktivita osteoklastů)
        - opakem je osteopetróza
    - hypofyzární nanismus
        - nedostatek růstového hormonu
        - opakem je gigantismus
    - akromegalie
        - nadbytek růstového hormonu v dospělosti, tloustnutí kostí
    - Pagetova choroba
        - ovlivnění metabolismu a diferenciace osteoklastů
        - hrubé kosti, neodbourávají se
        - léčitelné transplantací kostní dřeně
}

◊section{Krev}

◊meta{Tato kapitola bývá probírána až v rámci posledních přednášek, po nervové soustavě.}


◊ls[#:t "Linie krevních buněk"]{
    - erytroidní linie
        - zprostředkování transportu kyslíku do tkání
        - erytrocyty, retikulocyty
    - lymfoidní linie
        - zásadní pro tvorbu adaptivní imunitní odpovědi
        - T-buňky, B-buňky a jejich blízcí příbuzní
    - myeloidní linie
        - umožňuje vrozenou imunitní odpověď a podílí se na odpovědi adaptivní
        - granulocyty a makrofágy
}

◊definitions{
    ◊term["hematokrit"]{
        Celkový objem pevné složky krve.
    }
}

◊ls[#:t "Složení krve"]{
    - objev krve činí 6 až 8% tělesné hmotnosti
        - z toho hematokrit činí u žen 41%, u mužů 46%
    - hodně mezibuněčné hmoty (plazma)
        - nestlačitelná
        - 5--6 litrů
    - krevní buňky: erytrocyty, leukocyty, trombocyty
        - relativně mobilní, schopny opustit krevní řečiště
    - červené krvinky (erytrocyty)
        - 45% objemu (◊${5 \cdot 10^12} na litr)
    - bílé krvinky (leukocyty)
        - 1% objemu (◊${4} až ◊${6 \cdot 10^9} na litr)
        - granulocyty (◊${5 \cdot 10^9} na litr)
        - agranulocyty (◊${7 \cdot 10^8} na litr)
    - krevní destičky (trombocyty)
        - ◊${150} až ◊${300 \cdot 10^9} na litr
}

Na následujícím obrázku lze vidět, z jakých buněk se vyvíjejí jednotlivé krevní buňky. Jejich vlastnosti jsou popsány v následující sekci.

◊img["vyvoj_krevinch_bunek.png"]{Schéma zobrazující vývoj krevních buněk ze společné kmenové buňky}

◊ls[#:t "Sedimentace"]{
    - její rychlost určována diagnostickou hematologickou metodou
    - krev se nasaje do trubice, nechá se sedimentovat
        - nejrychleji klesají erytrocyty a pak leukocyty
        - nad nimi zůstane plazma
    - vysoká sedimentace
        - když je v těle zánět, v plazmě je hodně imunoglobulinů
            - krev je hustější a krvinky klesají pomaleji
            - sloupec erytrocytů je vyšší, i když jich je stejně jako u zdravého jedince
}

◊definitions{
    ◊term["buffy coat"]{
        Koncentrovaná suspenze získaná sedimentací.
    }
}

Rychlejší alternativou sedimentace je centrifugace. K dalším metodám zkoumání krve patří krevní roztěr a průtoková cytometrie (schéma funkce viz obrázek níže).

◊img["cytometrie.png"]{Schéma průtokové cytometrie}
◊em{By Kierano - Own work, CC BY 3.0, ◊link["https://commons.wikimedia.org/w/index.php?curid=22102570"]{link}}

Při cytometrii protékají měřičem buňky jedna po jedné. Přerušují u toho laserový paprsek, který je poté pomocí soustavy zrcadel a detektorů analyzován --- dá se zjistit počet buněk, z vlastností paprsku i jejich druh a obsah. Často se buňky fluorescenčně barví.


◊subsection{Erytrocyty}

◊ls{
    - terminálně diferencované bezjaderné buňky
    - přenos plynů (u savců)
    - bikonkávní tvar (maximální povrch vůči objemu)
        - ptáci, obojživelníci mají oválný
    - průměr 5 mikrometrů
        - kapiláry mají jen tak velký průměr, jak velké je jádro erytrocytů, které limituje jejich velikost
    - žijí cca 120 dní, poté ve slezině či kostní dřeni odstaněny makrofágy
    - fetální hemoglobin má vyšší afinitu ke kysíku než dospělý
        - váže kyslík za nižšího tlaku (který je v placentě)
}

◊definitions{
    ◊term["erytroblast"]{
        Nezralý erytrocyt v kostní dřeni.
    }

    ◊term["retikulocyt"]{
        Nezralý erytrocyt v krevním řečišti (tvoří 1% všech erytrocytů). Tyto erytrocyty neopouštějí krevní řečiště.
    }
}

◊ls[#:t "Vznik"]{
    - jako všechna pojiva pochází z mezenchymu
    - odvozeny od kmenových buněk krevní řady (erytroidní linie)
        - ty mají extraembryonální původ (v prenatálním vývoji),vznikají ve žloutkovém váčku (trofoblastu)
    - vznik v kostní dřeni (◊${5 \cdot 10^11} za den vzniká a zaniká)
     - při změně erytroblastu v erytrocyt ztrácí erytroblast RNA, jeho jádro kondenzuje, je vyloučeno a odklizeno makrofágy (ztrácí všechny organely)
}

◊ls[#:t "Anémie (chudokrevnost)"]{
    - hypochromní anémie
        - erytrocytů je v krvi dost, je v nich ale nedostatek hemoglobinu
        - špatně nesou kyslík a barvu
    - srpkovitá anémie
        - způsobeno bodovou mutací hydrofilní kyseliny glutamové (např. kodon GAA) na hydrofobní valin (např. kodon GUA)
        - v neokysličeném stavu se hemoglobin shlukuje (polymerizuje, vytváří vláknité útvary a agregáty) a mění tak tvar krvinek
        - krvinky mají kratší životnost, jsou méně flexibilní - blokují vlásečnice, což vede k ucpání cév
}

◊subsection{Leukocyty}

Leukocyty se dělí na granulocyty a agranulocyty.

◊subsubsection{Granulocyty}

◊ls{
    - terminálně diferencionavé nedělící se buňky
    - polymorfonukleární leukocyty (velmi proměnlivé, polymorfní jádro)
    - obsahují granula, což jsou obarvitelné částice
    - 12--15 mikrometrů
    - schopné pohybu
    - neutrofily
        - fagocytují, zabíjejí a tráví bakterie
        - barví se neutrálními barvivy (do růžova)
    - bazofily
        - při alergické reakci sekretují histamin a serotonin
        - barví se zásaditými barvivy (do tmavě modra)
    - eozinofily
        - likvidují mnohobuněčné parazity
        - barví se kyselými barvivy (hematoxylin-eosi, do červena)
}

◊ls[#:t "Neutrofily"]{
    - polymorfonukleární leukocyty, dříve zvané mikrofágy
    - 60--70%  bílých krvinek
    - mají segmentované jádro
        - nezralé má tvar podkovy
        - čím starší, tím více segmentů (až 7)
            - hypersegmentované buňky
        - běžně je složeno z 2--5 laloků spojených můstky
        - ženy mají na jednom segmentu paličkovitý přívěšek, který obsahuje inaktivovaný chromozom X
    - krátce žijící buňky (v krvi 6-7 dní, ve vazivu 1-4 dny)
    - přichází v první vlně buněk do místa zánětu
    - mohou být rychle nahrazeny z kostní dřeně
}

◊ls[#:t "Neutrofilní aktivita"]{
    - receptory neutrofilů jsou schopny rozeznat např. bakterie, které poté fagocytují a ve fagozomech zlikvidují
    - jejich fagocytická aktivita může být dále stimulována
        - nízkoafinní Fc receptory na neutrofilech
        - označení bakterie protilátkami, tzv. ◊em{opsonizace}
    - látky pro rozklad bakterií
        - superoxidové anionty
        - peroxid vodíku
        - chlornanové kationty
    - mrtvé neutrofily + bakterie + natrávený materiál -> hnis
}

Zvýšené množství neutrofilů v krvi (neutrofilie) tedy může značit infekci, a to akutní i chronickou.

◊ls[#:t "Eozinofily"]{
    - 2-4% leukocytů
    - mají dvojlaločná jádra s granulami (cca 200 na buňku)
    - granula
        - tvoří hlavní složku MBP (major basic protein)
            - mají antiparazitickou funkci
        - enzymy histamináza a arylsulfatáza
            - rozkládají histamin a leukotrieny
            - mohou tlumit účinek basofilů a žírných buněk
}

◊ls[#:t "Eozinofilie"]{
    - ukazuje na  alergické reakce a parazitární infekce (např. helmintózy)
    - při napadení organismu patogenem se jejich počet drasticky zvedne
    - jejich počet se dá snížit kortikoidy
}

◊definitions{
    ◊term["Multivalentní antigen"]{
        Struktura obsahující větší množství vazebných míst pro protilátku.
    }
}

◊ls[#:t "Bazofily"]{
    - tvoří 1% krevních leukocytů
    - na povrchu jsou receptory pro protilátky (imunoglobuliny E, IgE)
    - při zvýšené hladině bazofilů v krvi může pravděpodobněji dojít k alergické reakci
    - jsou schopny degranulace
        - granula splynou s membránou a vylijí se do okolního prostředí
        - ničí cizí struktury
    - regulace exocytózy
        - regulovaná vazbou antigenu na IgE, který je navázaný na IgE receptorech
            - IgE receptor váže IgE i pokud není navázaný na antigen (= je vysokoafinní)
    - pokud se v těle vyskytne multivalentní antigen, dojde k agregaci receptorů
        # aktivace signalizační kaskády
        # degranulace granulí
        # vylití biologicky aktivních aminů (histamin, serotonin)
}

◊subsubsection{Agranulocyty}

◊ls{
    - nejsou obarvitelné
    - monocyty (◊${4 \cdot 10^8} na litr)
        - diferencují se v makrofágy a dendritické buňky
        - magrofágy
            - fagocytují parazity a vlastní poškozené a apoptotické buňky
            - produkují oxidační produkty
            - některé se mění na dendritické buňky
        - dendritické buňky
            - fagocytují na periferii, kde migrují do uzlin a prezentují antigeny prostřednictvím MHC II. třídy
    - lymfocyty (◊${3 \cdot 10^8} na litr)
}

◊definitions{
    ◊term["Fagocytární systém"]{
        Soubor všech makrofágů v různých tkáních.
    }

    ◊term["MHC II. třídy"]{
        Krátké úseky glykoproteinů (exogenní peptidy sic), které jsou charakteristické pro pohlcenou látku.
    }
}

◊ls[#:t "Monocyty"]{
    - největší krvinky
    - součástí myeloidní linie
    - oválné, podkovovité nebo ledvinovité jádro
    - prekurzory mononukleárního fagocytárního systému
    - před vstupem do tkáně osm hodin kolují v krvi
    - prakticky nefunkční, v krvi mají jen funkci "zásobárny makrofágů"
    - diferenciují na makrofágy a dendritické buňky
}

◊ls[#:t "Makrofágy"]{
    - diferenciace po vstupu do tkáně kapilární stěnou
    - provádí endocytózu tkáňového debrisu včetně apoptotických tělísek
    - na povrchu nesou MHC II. třídy
        - toto MHC kontrolují Th-lymfocyty, které případně spouštějí imunologický poplach, címž upozorní B-lymfocyty
    - při zánětu nastupují po neutrofilech
}

◊ls[#:t "Dendritické buňky"]{
    - in vitro připravíme izolací z krve a použitím interleukinu-4a GM-CSF (granulocytární makrofágový colony stimulating factor)
    - aktivita
        # endocytují cizorodou látku
        # přesunou se do mízní uzliny a naštěpí endocytovanou látku
        # prezentují ji na povrchu
        # T-lymfocyt ji potenciálně rozpozná, aktivuje se a vyvolá imunitní reakci
}

◊ls[#:t "Osteoklasty"]{
    - kostní buňky odbourávající kostní tkáň
    - vznik splýváním monocytů -> mnohojaderné
    - funkce např. prořezávání zubů
        - proti špičce zubu se nachází speciální populace osteoklastů
        - je třeba odbourat kost čelisti, aby se mohl zub prořezat ven
     - poruchy v myeloidní linii (především ve funkci monocytů a jejich diferenciačních produktů) mohou mít velký vliv na remodelaci kostní hmoty
        - Pagetova choroba
            - nadměrné odbourávání kosti a následné tovoření kosti neplohodnotné
}

◊ls[#:t "Lymfocyty"]{
    - tvoří 30% leukocytů
    - různorodá velikost (5 mikrometrů -- 15 mikrometrů)
        - rozdíl v množství cytoplazmy (většina je zcela vyplněna jádrem)
     - schopny aktivního pohybu (z krve do tkání --- do místa zánětu nebo do mízní uzliny)
     - schopny vytvářet mnohočetná komplikovaná mezibuněčná spojení
        - interakce vícero párů membránových receptorů a jejich ligandů
        - regulace diferenciace (případně následné proliferace) a efektorové funkce (např. zabití cílové buňky cytotoxickým T-lymfocytem)
}

◊ls[#:t "T-lymfocyty"]{
    - tvoří 90% leukocytů
    - dělení podle povrchových koreceptorů pro MHC glykoproteiny
        - CD4 (interakce s MHC II)
            - pomocné a supresorové
        - CD8 (interakce s MHC I)
            - cytotoxické
    - dělení podle genů, které byly přestavěny ve funkční T-receptor
        - rekombinací v nich vznikají nové geny a jsou syntetizovány nové proteiny
            - přeskupování genových segmentů je prováděno rekombinázami
        - ◊|alpha|◊|beta|
            - výběr genů probíhá náhodně
            - jsou připraveny na cokoli
        - ◊${\gamma \delta}
            - výběr genů probíhá na základě evoluce
            - jedná se o konkrétní poskládání genových segmentů, která jsou nejčastěji používaná a mají smysl
        - organismy se liší v poměru ◊|alpha|◊|beta| a ◊${\gamma \delta}
            - např. člověk 95:5, přežvýkavci 70:30
}

◊ls[#:t "Chyby při vzniku T-lymfocytů"]{
    - popletení substrátu
    - dojde ke spojení ramen dvou chromozomů, které spolu fyzicky vůbec nesouvisí
    - např. filadelfský chomozom
        - na něm je fúzní chimérní gen (propojení částí genů Cbl a Abl)
        - vznik nedeaktivovatelné kinázy schopné transformovat postiženou buňku v buňku nádorovou
}

◊ls[#:t "B-lymfocyty"]{
    - tvoří 5% leukocytů
    - produkují protilátky
    - afinitní maturace
        - když se organismus setká s nějakým antigenem, vylepší svoje protilátky
        - sekundární odpověď zahrnuje protilátky s vyšší afinitou k antigenu
        - imunoglobulinové geny náhodně mutují, B-lymfocyty s mutovanými geny poté soupeří o navázání antigenu
        - ty s nízkou afinitou jsou odstraněny a tak zůstanou pouze ty s vysokou
}

◊ls[#:t "Efektorové buňky"]{
    - kategorie buněk tvořená zčásti buňkami ze skupiny T-lymfocytů a zčásti buňkami B-lymfocytů
        - z T-lymfocytů jsou to pomocné (Th) a cytotoxické buňky (Tc)
        - z B-lymfocytů jsou to plazmatické buňky, neboli buňky produkující velké množství protilátek
    - jsou diferenciovány a aktivovány pro výkon své funkce
}

◊ls[#:t "NK buňky"]{
    - tvoří 5% leukocytů
    - ničí buňky bez MHC I
}

◊subsection{Krevnní destičky}

◊ls{
    - nejsou to buňky, ale bezjaderné diskovité útvary
    - velikost 3 mikrometry
    - vznikají fragmentací polyploidních megakaryocytů sídlících v kostní dřeni
        - megakaryocyt vysílá výběžky přes stěny do kapilár a odštěpuje destičky přímo do krve
            - jeho rozpad je programovanou buněčnou smrtí, zbytky poté uklidí makrofágy
        - za den až 100 000 z jednoho karyocytu
    - v krvi přežijí 10 dní
    - neopouští krevní řečiště
}

◊ls[#:t "Stavba"]{
    - regulátory srážení krve
        - PDGF (platelet derived growth factor)
            - jako diferenciační faktor epiteliálních buněk se podílí na efektivní reparaci poškozené tkáně
        - serotonin
            - vasokonstriktor
            - jeho uvolnění je stimulováno vazbou na poškozené cévní stěny
            - schopen uzavřít i malé arterie
}

◊ls[#:t "Průběh opravy poškozené tkáně"]{
    # destička se dostane do kontaktu s kolagenními vlákny
    # nastane exocytóza faktorů aktivujících ostatní destičky
    # dojde k uvolnění aktivačních látek ze stěn poškozených cév
        - změna protrombinu na trombin
    # trombin katalyzuje přeměnu fibrinogenu na fibrin
    # fibrin polymeruje a vytváří vláknitou síťovinu vznikající krevní sraženiny
    # vznik trombu (sraženiny)
}

◊subsection{Patologie}

◊ls[#:t "Leukémie"]{
    - rakovina krve
    - dochází k nádorové přeměně některého z diferenciačních stádií buněk odvozených od kmenových buněk kostní dřeně
    - zvýšený počet leukocytů jednoho typu v krvi
        - myeloblastické zvýšení
            - zvýšené množství granulocytů a monocytů
        - lymfoblastické zvýšení
            - zvýšené množství lymfocytů
        - obě mohou být akutní nebo chronické
    - leukocyty nedozrávají a jsou tak nefunkční
    - rizikové faktory
        - kouření
        - chemikálie (benzen)
        - radioaktivní záření
        - léčba jiného nádorového onemocnění
        - filadelfský chromozom
    - efektivní řešení: chemoterapie a transplantace kostní dřeně
}

◊ls[#:t "Mononukleóza"]{
    - EBV virus napadá B-lymfocyty, nebo jejich prekurzory
        - B-lymfocyty se pomnoží, tváří se jako cizí organismus a tělo se brání
        - dochází k narušení rovnováhy mezi jednotlivými složkami imunitního systému
    - po vyléčení máme EBV na celý život
}

◊section{Lymfatický systém}

Lymfatické i lymfoidní tkáně jsou všude po těle, zejména v místech, kde do těla vstupují patogeny, nebo kudy během infekce putují.

◊definitions{
    ◊term["MALT"]{
         Lymfoidní tkáň asociovaná s mukózou (sliznicí).
    }

    ◊term["GALT"]{
        Lymfoidní tkáň asociovaná se střevem (gut).
    }

    ◊term["BALT"]{
        Lymfoidní tkáň asociovaná s dýchacími cestami (bronchy).
    }
}

◊ls[#:t "Lokalizace lymfatických cest"]{
    - pod epitely (s epitely asociovaná lymfoidní tkáň)
        - místa proliferace a diferenciace lymfocytů
        - MALT, GALT, BALT
    - lymfatické orgány
        - anatomicky diferenciovaná množina lymfoidní tkáně
        - složeny pouze z lymfoidní tkáně
        - dělení
            - primární
                - zajišťují hematopoézu (krvetvorbu)
                - probíhá v nich selekce lymfocytů, které nereagují s tělěm
                - kostní dřeň, thymus (brzlík)
            - sekundární
                - napojeny na lymfatický i oběhový systém
                - zajišťují efektivní setkávání buněk imunitního systému
                - kompartmentace efektivního imunitního dozoru
                - slezina, mízní uzliny
                    - stromální buňky  jsou velmi důležité
                    - tvoří "lešení" pro hematopoetické buňky
                    - vytváří vhodné prostředí pro setkání lymfocytů s antigeny

}

◊definitions{
    ◊term["totipotentní buňka"]{
        Buňka schopná vytvořit jakýkoli druh buňky, ergo celý organismus. Takovými buňami jsou zygoty a dělivé meristémy.
    }

    ◊term["multipotentní buňka"]{
         Buňka schopná diferenciace do mnoha typů buněk, pouze však v rámci jedné tkáně. To jsou kmenové buňky.
    }
}

◊ls[#:t "Kostní dřeň"]{
    - veliký orgán
    - sídlo hematopoézy
    - dochází tu k proliferaci buněk všech linií
    - dělení podle barvy
        - červená kostní dřeň
            - hematopoetická
            - u fetu probíhá krvetvorba jen v játrech a slezině
            - po narození je v těle pouze červená k.d. a hematopoéza probíhá výhradně tam
            - v dopělosti pouze v plochých kostech a obratlích
        - žlutá kostní dřeň
            - tuková
        - šedá kostní dřeň
    - 0,1% buněk kostní dřeně má na povrchu membránový protein CD34
    - každý buněčný typ je nezávisle regulován
        - erytropoetin (EPO), kolonie stimulující faktory (CSF)
    - kmenové buňky v kostní dřeni
        - stačí transplantovat 5000 buněk pro zajištění kompletní krvetvorby (<= myší model)
    - typickou markerovou molekulou je C-kit CD117
        - je na povrchu buňky
        - obsahuje informace o buněčném typu, stádiu diferenciace a buněčné aktivitě
}

Hematopoéza se dá jednoduše sledovat in vitro. Nejprve se provede výplach z kostní dřeně (jako na praktikách), poté se nechají jednotlivé buňky růst na agaru. Vzniknou nepohyblivé kolonie, které se dají dobře pozorovat.

◊ls[#:t "Embryonální krvetvorba"]{
    - vzniká cca třetí týden
        - ze žloutkového vaku se vytvoří krevní ostrůvky obsahující primitivní erytroblasty
        - větší než ty dospělé, mají jiný hemoglobin (Hb) a obsahují jádro
    - od pátého týdne vzniká intraembryonální krvetvorba
        - v játrech, slezině, kostní dřeni
}

◊title{Svaly}

◊title{Nervové buňky}

◊ls{
    - ontogeneticky i fylogeneticky odvozeny od epitelu
        - některé z nich mají polarizovanou strukturu (ependymální gliové buňky mají řasinky)
    - neurony, neuroepiteliální smyslové buňky, gliové buňky
    - mnoho rozdílů mezi buňkami, patří zde nejmenší i největší buněčné typy
}

◊definitions{
    ◊term["centrální nervový systém (CNS)"]{
        Je tvořen mozkem a míchou (šedá a bílá hmota).
    }

    ◊term["periferní nervový systém (PNS)"]{
        Je tvořen nervoveými buňkami a ganglii, dále buňkami vzniklými z neurální lišty.
    }

    ◊term["neurální lišta"]{
        Neurální lišta je zbytek neuroepitelu, který zůstane v místě, kde se vchlípila neurální trubice.

        Vznikají zde buňky s obrovským diferenciačním a migračním potenciálem: chromafilní buňky, melanocyty, odontoblasty, Schwannovy buňky, neurony senzorické, gangliové, atd. Tyto buňky nezvznikají in situ, ale na liště, a na místo určení se dostanou už naprogramovány.

    }
}

◊section{Stavba CNS a PNS}

V celém nervovém systému je asi ◊${10^{11}} nervových buňek, 3--10 krát více podpůrných gliových buněk a tím pádem 1000-5000 krát více možných propojení neuronů. Nervy jsou zpěvněny třemi obaly, epineuriem, perineuriem a endoneuriem.


◊ls[#:t "Metody zkoumání CNS"]{
    - skenovací metody často pracují s izotopy prvků, které mají liché počty neutronů
        - možnost vizualizovat pomocí funkční magnetické rezonance (FMR)
        - dá se zjistit, které oblasti mozku jsou aktivní a neaktivní
        - mozek je možno pozorovat in vivo, např. i to, jak reaguje na konkrétní vzruchy
        - PET (pozitronová emisní tomografie): vychytávání cukru označeného radioaktivní látkou aktivním rostoucím nádorem
    - mozek je rozdělen na malé specializované části
}

Bylo zjištěno, že máme nějak mnoho druhů neuronů na to, jak málo máme genů, které je kódují.Zdá se, že přírody nejspíše využívá triky s exony a introny (alternativní splicing).

◊ls[#:t "Vývoj CNS"]{
    # v ontogenezi se tvoří obrovské množství buněk
        - některé projdou programovanou buněčnou smrtí
    # nezralé neurony během ontogeneze putují podél radiálních gliových buněk propojujících vnitřní  a vnější povrch nervové trubice (délka až 2cm)
    # gliové buňky slouží jako pravítko a určují tloušťku vrstev nervových buněk v mozku
    # nervové výběžky jsou poté naváděny pomocí chemoatraktantů (např. netrin) a chemorepelentů (např. některé semaforiny, proteiny Slit)
        - přesná diferenciace v konkrétní populaci je dána poziční informací od hormonů
            - rodiny Hox, Pax, Dbx, Irx
            - faktory sonic hedgehog, BMP
        - někdy se jeden výběžek plazí po druhém, který by pak byl tzv. ◊em{pioneer neuron}
    # pro přežívá neuronů jsou nutné neurotropiny, např. NGF (nerve growth factor)
}

◊ls[#:t "Tvorba vrstev pomocí gliových buněk"]{
    # první neuroblasty vytvoří vrstvu, která se stabilizuje tvorbou mezibuněčných spojení
    # poté se po gliových buňkách posunou nové buňky, projdou stávající vrstvu a vytvoří novou vrstvu atd.
    # poslední vrstva přidaných buněk je ◊em{neokortex}, je nejdál od zdroje kmenových buněk
}

◊img["vrstvy_rust.png"]{Znázornění postupného růstu vrstev podle gliových buněk}

◊ls[#:t "Nervové spoje"]{
    - různé neurální populace se aktivují při různých úkolech
        - např. při rozlišování hranatých a kulatých věcí
    - dynamická struktura, která se "drátuje" v průběhu života
    - součástí správného rozvoje CNS je i apoptóza
    - neurony, které nejsou za prvních pár týdnů prenatálního života použity, podléhají buněčné smrti
    - podobně jsou i v rámci postnatálního života posilovány spoje, které jsou často používány
        - naopak nepoužívané spoje slábnou a zanikají
        - je důležité dávat dítěti (alespoň do sedmi let života) co nejvíce různých vjemů
        - příkladem může být absolutní hudební sluch, který silně souvisí s typem vjemů, kterým je dítě vystavováno
            - v Asii desetkrát vyšší incidence absolutního sluchu než u nás, snad kvůli tonálním jazykům
            - je s ním spijený jen jeden gen, který avšak způsobuje i nízkou hodnotu IQ
    - tato plasticita mozku během života zaniká
        - netvoří se nové spoje, pouze se posilují a zeslabují ty stávající
}

Místům v mozku, která byla původně určena jako nefunkční či prázdná, bývá pomocí FMR přiřazena funkce --- objevujeme stále nové souvislosti mezi jednotlivými částmi mozku.

◊box["Poznámka"]{
    ◊definitions{
        ◊term["mikrochimérismus"]{
            Přítomnost dvou a více geneticky odlišných populací buněk, které jsou odvozeny z různých zdrojů, v jednom orgánu nebo jednotlivci.

            Např. buňky myšátek během gravidity osidlují tělo matky, což se dá pozorovat na myšátkách GFP-tagovaného samce a netagované samice.
        }
    }
}

◊subsection{Neurony}

◊ls{
    - schopné sčítat a odčítat signály z jiných neuronů, integrovat je, a pak vyslat signál
    - jsou v podstatě zodpovědné za to, že myslíme
    - neurony jdou připravit z kmenových buněk pomocí kyseliny retinové
        - na vytváření jednotlivých neurálních populací jsou potřeba ještědalší růstové faktory
}

◊ls[#:t "Dendrity"]{
    - většina neuronů mnoho dendritů
    - větví se, co dendrit, to možnost napojit se na individuální nervovou buňku
        - např. Purkyněho buňky mohou integrovat až 200 000 signálů
    - při větvení se tenč
    - zesilují se, nebo zeslabují, podle toho, jak jsou používány
        - buňka umí do dendritu transportovat proteiny, snad i lokalizovanou translaci
        - tento proces nejspíše stojí za dlouhodobou pamětí
}

◊ls[#:t "Axony"]{
    - většina neuronů jeden axon, vzácně 0
    - větví se, má ale konstantní šířku
    - 1mm -- 1m na délku
    - vyrůstají z místa zvaného ◊em{axonální kónus}
        - tam se provádějí všechny výpočty
        - jde o to, jestli je překročen akční potenciál
    - plazmatická membrána axolemma, obsahuje axoplazmu
    - úsek mezi kónem a počátkem myelinové pochvy se nazývá ◊em{iniciální segment}
        - jsou zde unikátní iontové kanály kontrolující generování nervového vzruchu
    - mohou být myelinizované i nemyelinizované
}

◊ls[#:t "Molecular fence"]{
    - v aixonálním výběžku jsou jiné iontové kanály než dendritech
    - zajišťují diferenciaci na úrovni membrány
    - buňka je díky ní polarizovaná
    - brání průchodu signalizace zpět do dendritu
    - pro správnou funkci NS je nezbytná dostředivá a odstředivá signalizace právě na základě membránových domén
}

◊subsubsection{Nervová zakončení}

◊definitions{
    ◊term["aktivační zakončení"]{
        Extracelulárně snižují polaritu nebo koncentraci sodných iontů a zvyšují potenciální vybuzení neuronu k vypálení signálu.

        Způsobují malou depolarizaci na postsynaptické membráně, otevírají gated kationtové kanály.

        Ve spojení především s neurotransmitery acetylcholinem a glutamátem.
    }

    ◊term["inhibiční zakončení"]{
        Způsobují malé hyperpolarizace, otevírají ◊chem{Cl-} a ◊chem{K+} kanály. Ovlivňují prostorovou a časovou sumaci signálů. Rozhodují o tom, jestli bude či nebude na neuronu postsynaptický potenciál.

        Znesnadňují signalizaci buňkám, kde se zrovna vylijí.

        Ve spojení především s neurotransmitery GABA a glycinem.
    }
}

V reálu záleží na tom, jak se posčítají hyperpolarizace a depolarizace.

◊ls[#:t "Funkce svalů"]{
    - motorický neuron musí dostat dostatečné množství aktivačních signálů
    - sval samotný už nic neřeší a pokud dostane signál, prostě se stáhne
    - akční potenciál je pořád stejně velký, jak rychle se má sval stáhnout pozná z frekvence, ve které dostává signály
}

◊subsubsection{Schopnost regenerace}

◊meta{Na toto byl v přednášce kladen velký důraz.}

Naproti obecné představě jsou nervové buňky schopny určité regenerace.

◊ls[#:t "Průběh poškození axonu"]{
    # Ve zdravém neuronu spojeném se svalem je jádro uprostřed a je v něm mnoho Nisslových substancí.
    # Když je axon přerušen, jádro se posune na periferii neuronu a počet Nisslových substancí je velice sníží. Část nervového vlákna, která je nyní spojená jen se svalem, degeneruje a je odklizena makrofágy.
    # Denervovaná svalová buňka atrofuje. Schwannovy buňky proliferují, tvoří silný kabel roustoucí ze svalové buňky.
    # Axon dorůstá a snaží se spojit a prorůst Schannovými buňkami.
        - Když se mu to povede, sval je opět inervovaný, obnoví se jeho síla i funkce a neuron se vrátí do původního stavu.
        - Když se mu to nepovede, růst axonu je neorganizovaný, sval dál atrofuje. Po překročení určité doby je sval už nenávratně poškozen.
}

◊box["Poznámka"]{
    Nisslova substance (Nissl body) je granulární hmota v somě neuronu složená z endoplazmatického retikula obklopeného volnými ribozomy.
}

Axony málokdy najdou přesně tu správnou myelinovou pochvu a přesně to správné místo, kde původně vedly---jednotlivé svaly mají po regeneraci po zranění nejprve špatnou koordinaci a mozek se musí přeučovat, což trvá měsíce až roky.

U myši jsou schopna se zahojit i poranění páteře; při poraněních páteře u člověka je ale problém s tím, že je informační zmatek přerušených axonů obrovský, navíc axony by musely prorůst mnohem dál než u myši.

◊ls[#:t "Léčba přerušených nervových spojů"]{
    - k léčení se snažíme využít i kmenové buňky
    - stárnutí je spojeno s neurodegenerací, vymírají konkrétní populace nervových buněk
        - např. u Parkinsonovy choroby to jsou dopaminergní neurony v ◊em{substantia nigra}
    - existují snahy diferencovat určité populace nervových buněk in vitro
    - regenerace je ale omezenejší než u běžných epitelů
        - nejsilnější je regenerace v bulbus olfactorius (čichovém bulbu) a v hippokampu, který je plastický i v dospělosti
}

◊ls[#:t "Příklady regenerace"]{
    - lze ji pozorovat u pacientů trpícími vážnými, život ohrožujícími epileptickými záchvaty
        - odstraní se velká část mozku s epileptickým ložiskem
        - původní práci této části zastane druhá hemisféra
    - Phineas Gage
        - hlavou mu proletěla tyč
        - obnovila se mu skvěle řeč i hybnost
    - víme, kde v myším mozku sídlí kmenové buňky
}

◊subsection{Pomocné nervové buňky}

Mají základ z neurální trubice, v PNS z neurální lišty. Někdy označované jako ◊strong{gliové buňky}.

◊definitions{
    ◊term["oligodendrocyty"]{
        Tvoří myelinové pochvy axonů v CNS. Mohou se podílet na myelinizaci více než 1 axonu.

        Podobnou úlohu zastávají v PNS Schwannovy buňky. Každ Schwannova buňka však může vytvářet pouze jeden segment myelinové pochvy na jenom axonu.
    }

    ◊term["astrocyty"]{
        Dělají strukturní a funkční podporu neuronům, ustanovují extracelulární homeostázi ◊chem{K+} a ◊chem{H+}.

        ◊ls[#:t "Funkce"]{
            - odstiňují synapse
            - pomáhají vzruch vést, ale i ho zastavit
            - dlouhé výběžky astrocytů slouží nervovým buňkám při jejich migraci do cílové struktury jako vodící struktury
            - snižují hladinu draslíku a zvyšují hladinu sodíku v synapsi
            - čistí extracelulární prostředí v mozku po proběhlých nervových vzruších
        }

        Za jejich přítomnosti také dochází k vychytávání neurotransmiterů a k jejich transformaci; např. glutamát -> glutamin, který není neurotransmiterem. Glutamin poté předají presynaptickému neuronu. To se děje proto, aby k nervovým vzruchům mohlo docházet častěji.

        ◊ls[#:t "Stavba"]{
            - diferenciace podléhá růstovým faktorům
                - NGF (nerve growth factor), BDGF (brain derived GF), GDNF (glial cell derived GF)
            - propojeny gap junctions
            - různé výběžky plní různé úkoly
                - nějaké výběžky obalují kapiláry a účastní se hematoencefalytické bariéry
        }
    }

    ◊term["mikroglie"]{
        Imunokompetentní, mají podobnou funkci jako markofágy.
    }

    ◊term["ependymové buňky"]{
        Pokrývají vnitřní dutiny CNS (trubice v míše a mozkové komory). Mají epiteloidní uspořádání a řasinky (povrch je velmi podobný epitelu dýchací trubic).

        Jsou všude tam, kde je v CNS tekutina, kterou uvádějí v cirkulaci svými řasinkami.
    }
}

◊img["oligodendrocyt.png"]{Schematický obrázek oligodendrocytu}
◊em{By Neuron-with-oligodendrocyte-and-myelin-sheath.svg: *Complete-neuron-cell-diagram-en.svg: LadyofHatsderivative work: Andrew c (talk) - Neuron-with-oligodendrocyte-and-myelin-sheath.svg, Public Domain, ◊link["https://commons.wikimedia.org/w/index.php?curid=10888009"]{link}}


Pro gliové buňky je základním zdrojem energie glukóza, kterou anaerobně štěpí na laktát. Kyslík je štřen pro neurony, kde je potřeba pro přenos nervových vzruchů.

◊ls[#:t "Myelinizace"]{
    - panožka Schwannovy buňky nebo oligodendrocytu se několikrát obtočí kolem výběžku
    - výsledná vtsva má výborné elektrické vlastnosti
    - nabohaceny komplexní glykolipidy, sfingolipidy, gangliosidy
    - mnoho axonů není myelinizovaných, musí ale být odstíněné
        - invaginace na periferii, vchlípení do těla oligodendrocytu; vzniká ◊em{mezaxon}
        - v jednom kanálku může být i více axonů
}

◊subsection{Hematoencefalická bariéra}

◊ls{
    - odděluje mozek od zbytku těla a je běžně pro buňky neprůchodná
    - propouští kmenové buňky, pokud je v mozku indukováno poškození
        - minimálně u myší, na kterých byl tento experiment proveden
        - pronikají přes ni kmenové buňky neznámého původu
        - zajištění regenerace poměrně velké části nervové tkáně
        - diferenciace v nervové buňky i různé typy gliových buněk
}

Na obrázku lze pozorovat výběžky astrocytů, které k sobě těsně doléhají. Samotná kapilára je pak z endoteliálních buněk, které jsou spojeny přes tight junctions.

◊img["bbb.jpg"]{Schematický obrázek hematoencefalické bariéry}
◊em{By Ben Brahim Mohammed - Own work, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=12263975}

◊ls[#:t "Stavba"]{
    - endoteliání kapilární buňka je obklopena výběžky astrocytů
    - všechny mezery mezi endoteliáními buňkami uzavřeny přes tight junctions
    - kromě imunitních buněk by nemělo nic projít
    - téměř vše, co se dostane k neuronům, prochází přes astrocyty
}

◊section{Senzorické epitely}

◊ls{
    - buňky na pomezí epitelu a nervové buňky
        - historicky je od ektodermu odvozena celá nervová soustava i senzorické tkáně čichové, zrakové i sluchové
    - mají apikální (detekční) a bazální (synaptický) konec
}

◊subsection{Čichový epitel}

◊img["nos.png"]{Schéma čichového epitelu}

◊ls{
    - jako jedna z mála neurosenzorických struktur se během života mění
        - senzorické neurony přeživájí 1--2 měsíce
        - poté jsou nahrazeny diferenciací bazálních buněk
    - skupina buněk se diferencuje v čichové (viz obrázek výše)
        - cilie jsou nepohyblivé, obsahují čichové receptory
        - na bazální straně jeden axon směřující do mozku
        - obklopeny podpůrnými buňkami s podobným významem jako gliové buňky
    - každý senzorický neuron exprimuje jen jeden z několika set čichových receptorů
    - když jsou buňky obnovovány, nově vznikající buňka si náhodně vybere jeden receptor
}

◊ls{
    - axony senzorických neuronů se stejným receptorem jsou rozptýleny v čichové sliznici
    - axony směřují do stejného glomerulu
        - u myší je v bulbus olfactorius na každé straně 1800 různých glomerolů
        - čím více glomerulů, tím více vůní umíme rozeznat, ale i tím více senzorických neuronů musíme mít
    - jak axony nově vznikajících buněk najdou správnou cestu ke glomerulu
        - zdá se, že v tom hrají roli receptory pro čich spřažené s G-proteiny
        - tyto receptory jsou schopny homeotické adheze, tj. dva stejné receptory se "zazipují", ale jiné ne
        - axon putuje po glomerulech, zůstane tam, kde se váže nejsilněji
    - existuje mnoho poruch této axonové navigace, lidé ztrácí schopnost kontinuity pachů
}

Studium navigace axonů se opět provádělo na zelených myškách; zeleně se obarvily jen neurony reagující na jednu konkrétní vůni. Po histologii mozku se ukázalo, že všechny zelené axony míří pouze do dvou míst (glomerulů), jednom na každé hemisféře.

◊subsection{Sluchový epitel}

◊ls{
    - morfologicky nejpropracovanější tkáň v těle
    - hlemýžďová rezonanční struktura vzniká prenatálně
    - záleží na tom, v kterém místě hlemýždě dochází k rezonanci s membránami, které obalují prostory vyplněné tekutinou
        - voda je nestlačitelná => přenáší vibrace
    - senzorickými buňkami jsou sluchové vláskové buňky
}

◊ls[#:t "Vláskové buňky"]{
    - leží ve struktuře ◊strong{Cortiho orgánu} v hlemýždi, mezi podpůrnými buňkami, překryty extracelulární matrix
    - převádějí mechanickou deformaci v elektrický signál
    - všechny mají stejnou morfologii varhanovitých výběžků, ◊em{stereocilií}
        - stabilizovány aktinovým cytoskeletem
        - podobně jako výběžky na buňkách ve střevě
        - rozměry každé stereocilie pevně dány vzhledem k poloze ve středním uchu, odpovídají frekvencii zvukového podnětu, na který mají reagovat
    - neregenerují se
    - jsou propojené přes gap junctions ◊em{konexinem 26}
}

◊img["ucho.png"]{Schematický obrázek popisující části vnitřního ucha}
◊em{By Madhero88 - Own work, CC BY-SA 3.0, ◊link["https://commons.wikimedia.org/w/index.php?curid=6888273"]{link}}

◊ls[#:t "Princip funkce"]{
    # zvukové vibrace deformují stereocilia na vláskových buňkách
    # otevírají se iontové kanály s mechanickými "vrátky" (mechanically gated ion channels)
        - reálně dochází ke změně konformace iontového kanálu
    # vzniká membránový vzruch, který se šíří vláskovou buňkou
    # na bazálním konci dojde v synapsi s neuronem k vylití neurotransmiteru
}

◊ls[#:t "Choroby"]{
    - sluch se mění, hlavně ve stáří a hlavně mužům (špatný sluch zvláště ve vyšších frekvencích)
    - celá řada poruch je genetického původu
        - mutace v konexinu 26 způsobují hluchotu (jedna z nejčastějších genetických chorob v Evropě)
}

◊subsection{Zrakový epitel}

◊ls{
    - fotoreceptory se dělí na tyčinky a čípky
    - senzorickou složkou jsou proteiny opsiny (◊em{ópsis} = zrak) s prostetickou skupinou ◊strong{retinalem}
        - retinal je schopný cis-trans izomerizace, když pohltí foton
        - změna konformace retinalu změní tvar opsinu
    - není schopný regenerace
}

◊img["oko.jpg"]{Schéma vstevtanosti oka}
◊em{[By OpenStax College - Anatomy Physiology, Connexions Web site. ◊link["http://cnx.org/content/col11496/1.6/"]{author link}, Jun 19, 2013., CC BY 3.0, ◊link["https://commons.wikimedia.org/w/index.php?curid=30148002"]{wiki link}]}

Nejblíže u pigmentovaných epiteliálních buněk je senzorický epitel, poté jsou různé interneurony a gangliové neurony, které vysílají signál do mozku. Apikální vrstvu senzorické složy tvoří brva (či přetvořený bičík).

◊ls[#:t "Princip funkce v rámci buňky"]{
    # retinal změní konformaci
    # opsin změní tvar
    # aktivují se cGMP fosfodiesterázy, které štěpí cGMP
        - v očních buňkách je jinak vysoká koncentrace cGMP
    # otevřou se ◊chem{Ca^{2+}} kanály, dojde k hyperpolarizaci membrány
    # uzavřou se ◊chem{Na+} kanály
    # zastaví se bazální signalizace
}

To, jakým způsobem vidíme, je vlastně negativ: při zachycení fotonu se zastaví/sníží bazální signalizace. To umožňuje rozlišovat jemnější nuance v signálech.

◊ls[#:t "Rodopsiny"]{
    - součástí rodiny opsinů, v tyčinkách
    - superpozicí tří různý rodopsinů vzniká konkrétní barva
    - mutace v jednom rodopsinu zapříčiní to, že člověk nebude schopen rozeznat nějaké barvy od sebe
        - jeden z rodopsinů je vázaný na chromozom X, takže se daltonismus vyskytuje častěji u mužů
}

◊ls[#:t "Pigmentované epiteliální buňky"]{
    - odrážejí a pohlcují světlo, brání osdleskům
    - fungují jako makrofágy
        - senzorické buňky se nemohou během života měnit, proto jen vyměňují svůj obsah
        - odštěpují váčky s denaturovanými proteiny a kovalentně modifikovanými lipidy
        - tyto váčky uklízejí právě epiteliální buňky
}

◊ls[#:t "Choroby"]{
    - výše zmíněná barvoslepost
    - mutace mitochondriální DNA => ztráta zraku, atrofie očního nervu
        - např. syndrom LHON
        - zrakový nerv a funkce senzorického zrakového epitelu je zřejmě jedna z Achillových pat energetického metabolismu
}

◊section{Patologie nervové soustavy}

◊ls[#:t "Roztroušená skleróza"]{
    - autoimunitní onemocnění proti MBP (myelin basic protein)
    - destrukce myelinových obalů T-lymfocyty
    - nemoc můžeme experimentálně vyvolat u myši
        - např. tím, že přeneseme aktivované T-lymfocyty do těla
    - léčba je nákladná
}

◊ls[#:t "Epilepsie"]{
    - způsobená různými úrazy, infekcemi, někdy je dědičná
    - jednou z příčin je odumření neuronů a nahrazení gliovými buňkami (tzv. ◊em{gliová jizva})
    - nervová soustava dočasně upadá do stavu pozitivních zpětných vazeb
}

◊ls[#:t "Parkinsonova choroba"]{
    - příčinou je nedostatek dopaminu
    - dochází ke svalovým třesům
    - v mozku jsou oblastni, kde jsou dopaminergní neurony lokalizovány (substania nigra), často odumírají
    - po Alzheimrovi druhá nejčastější choroba
}

◊ls[#:t "Alzheimrova choroba"]{
    - některé proteiny mají narušené odbourávání
        - např. amyloidní protein, tau protein
    - v mozku se hromadí plaky neodbouratelné substance, která tlačí, je cytotoxická a způsobuje neurologické patologie
}

◊ls[#:t "Creutzfeld-Jacobova choroba"]{
    - prionové onemocnění
    - chyby paměti, změny chování, špatná koordinace, časem slepota, slabost
    - dost vzácná
    - často se objeví zdánlivě bez příčiny, někdy je ale dědičná, dá se chytit i v rámci kontaktu s nakaženým nervovým systémem (např. při operacích)
    - mozek po nakažení začne vypadat jako houba (s děrami)
}

◊ls[#:t "Nádory CNS"]{
    - primární nádory mozku tvoří přibližně 1--2% všech zhoubných nádorů
    - nejčastěji děti do pěti let, nebo dospělí od 60 let
    - malé množství nádor je dědičně podmíněno
    - více než 50% nádorů jsou nádory z buněk podpůrné tkáně, ◊em{gliomy}
        - dělí se na low-grade a high-grade gliomy, podle toho, jak vysoký mají stupeň malignity
    - neuroblastom, ganglioneurom, feochromocyton, chemodektom, retinoblastom, oligodendrogliom (druh gliových buněk), astrocytom (druh gliových buněk), meduloblastom, ependymom, meningiom, angioretikulom
}

◊ls[#:t "Nádory PNS"]{
    - neurinom, neurilemon, Schwannom = nádor ze Schwannových buněk
    - neurofibrom
    - neurogenní sarkom --- vzácná varianta neurinomu, maligní
}