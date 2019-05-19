#lang pollen

◊define-meta[title]{Histologie}
◊define-meta[header]{zápisy}
◊define-meta[toc]{true}

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
    - místům v mozku, která byla původně určena jako nefunkční či prázdná, bývá pomocí FMR přiřazena funkce
    - podobně jsou i v rámci postnatálního života posilovány spoje, které jsou často používány
        - naopak nepoužívané spoje slábnou a zanikají
        - je důležité dávat dítěti (alespoň do sedmi let života) co nejvíce různých vjemů
        - příkladem může být absolutní hudební sluch, který silně souvisí s typem vjemů, kterým je dítě vystavováno
            - v Asii desetkrát vyšší incidence absolutního sluchu než u nás, snad kvůli tonálním jazykům
            - je s ním spijený jen jeden gen, který avšak způsobuje i nízkou hodnotu IQ
    - tato plasticita mozku během života zaniká
        - netvoří se nové spoje, pouze se posilují a zeslabují ty stávající
}

◊box["Poznámka"]{
    ◊definitions{
        ◊term["mikrochimérismus"]{
            Buňky myšátek během gravidity osidlují tělo matky, což se dá pozorovat na myšátkách GFP-tagovaného samce a netagované samice.
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
        - tam se provádějí všechny výpočt
        - jde o to, jestli je překročen akční potenciál
    - plazmatická membrána axo, lemmaobsahuje axoplazmu
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
        - např. u Parkinsonovy choroby to jsou dopaminergní neurony v ◊em{corpora nigra}
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

        Za jejich přítomnosti také dochází k vychytávání neurotransmiterů a k jejich transformaci; např. glutamát -> glutamin, který není neurotransmiterem. Glutamin oté předají presynaptickému neuronu. To se děje proto, aby k nervovým vzruchům mohlo docházet častěji.

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
    - zde se skupina buněk se diferencuje v čichové (viz obrázek výše)
        - cilie jsou nepohyblivé, obsahují čichové receptory
        - na bazální straně jeden axon směřující do mozku
        - obklopeny podpůrnými buňkami s podobným významem jako gliové buňky
    - senzorické neurony přeživájí 1--2 měsíce
        - poté jsou nahrazeny diferenciací bazálních buněk
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