#lang pollen
◊define-meta[title]{Struktura a vlastnosti informačních biopolymerů}
◊define-meta[header]{zápisy}
◊(define-meta toc #t)
◊define-meta[authors ("Evžen Wybitul")]


◊title{Stavba hmoty}

◊meta{Tato a následující sekce jsou zkratkovité, protože se v testech příliš nevyskytují. Slouží hlavně k obecnému přehledu a shrnují povětšinou už známé věci.}

◊ls{
    - hmota se dělí na pole a látky, ale všechny formy látky mají dualistický charakter
    - látky se skládají z atomů, které mají obal a jádro
        - proton: ◊${1,673 \cdot 10^{-27} \text{kg}}, náboj ◊${+e}
            - ◊${e = -1,602 \cdot 10^{-19} \text{C}}
        - elektron: ◊${9,109 \cdot 10^{-31} \text{kg}}, náboj ◊${-e}
        - ◊${1,675 \cdot 10^{-27} \text{kg}}, o trochu těžší než proton
}

◊meta{Ve fotochemii přednášel Einstein. Cool.}

◊ls[#:t "Fotoelektrický jev"]{
    - po dopadu fotonu na destičku se uvolní elektron
    - k uvolnění dojde jen pokud má foton dostatečně velký náboj
    - poměr elektronů a fotonů je 1:1
    - světlo má korpuskulární charakter
        - dvojštěerbinový pokus => světlo má vlnový charakter (důkaz interferencí)
}

◊ls[#:t "Základní vlastnosti atomu"]{
    - nukleony se přitahují velkou silou s krátkým dosahem
    - neutrony kompenzují extrémní kladný náboj, proto jich je vždy stejně nebo více než protonů
    - chemické vlastnosti udává konfigurace elektronů, hlavně těch valenčních
    - jádra se shodnými čísly Z i čísly N jsou ◊strong{nuklidy}
    - nuklidy se stejným Z a různým A jsou ◊strong{izotopy}
        - izotopy mají stejné chemické vlastnosti a liší se rychlostí reakce
        - používají se někdy u značení
}

◊ls[#:t "Radioaktivita"]{
    - jaderná přeměna
        - při rozpadu jádra se uvolňuje záření (rychle letící částice)
    - ◊${\alpha}: ryhle létající jádra ◊chem{^4_2He}, proniká vzduchem až několik cm, silně ionizující
    - ◊${\beta}: proud elektronů nebo pozitronů, je 100x pronikavětší než ◊${\alpha}
    ◊$${\ce{p -> n + e+ \\ n -> p + e}}
    - ◊${\gamma}: nejpronikavější (proletí několika metry betonu)
    - měří se mlžnou komorou
        - páry, které kondezují, pokud jimi něco proletí
}

U radioaktivity je důležitý i rozpadový zákon, který nám říká, kolik atomů radioaktivní látky budeme mít za určitou dobu.
◊$${N = N_0 \cdot e^{-\lambda t},}
kde ◊${\lambda} je přeměnová konstanta. Tu můžeme spočítat například pokud známe poločas rozpadu naší látky, protože
◊$${\tau = \frac{\log 2}{\lambda}.}
Zavádí se i veličina ◊strong{aktivita} [Bq], která udává počet radioaktivních přeměn za sekundu.

◊ls[#:t "Bohrův model atomu"]{
    - elektrony se pohybují po stacionárních drahách (hladinách) s určitým poloměrem, neztrácejí při pohybu energii
    - elektron může přecházet z jedné do druhé hladiny, když pohltí/vyzáří určité ◊em{kvantum energie}
    - můžeme pozorovat ◊strong{emisní spektrum} atomu
        - úzké čáry, které udávají hodnotu vyzářeného záření
        - jejich hodnoty odpovídají rozdílům mezi jednotlivými hladinami
    - model má několik nedostatků, funguje jen pro malé atomy
        - neumožňuje vypočítat relativní intenzitu spektrálních čar
        - nefunguje pro atom v magnetickém a elektrickém poli
        - nevysvětluje chemickou vazbu
}

◊section{Kvantově-mechanický model atomu}

V tomto modelu je projevu korpuskulárně-vlnový dualismus elektronů. Aplikuje se Heisenbergův princip neurčitosti --- nemůžeme současně detekovat hybnost i polohu částic. Proto se k popisu částic používají probabilistické metody.

◊subsection{Schrödingerova rovnice}

Rovnice, která popisuje částice pomocí vlnové funkce ◊${\psi}. ◊${|\psi|^2} pak udává pravděpodobnost toho, kde se daná částice nachází. Velikost atomu nemůžeme přesně určit, většinou se spokojíme s prostorem, kde se elektrony vyskytují s 99% pravděpodobností.

◊${\psi} vyjde jako řešení Schrödingerovy rovnice, těchto řešení je nekonečně mnoho. Liší se například i tím, jakou energii daná částice má. Řešení popisujeme třemi čísly, která se nazývají ◊strong{kvantová}.
◊ls{
    - ◊${n}, hlavní kvatnové číslo, odpovídá energii částice
        -   ◊${E = -B/n^2}, kde ◊${B = 13,6 \text{eV}}
        - ◊${n = 1}, atom je v základním stavu, ◊${n > 1}, atom je v excitovaém stavu
    - ◊${l}, vedlejší kvantové číslo, udává moment hybnosti elektronu
        - 0 --◊${n-1}
        - udává tvar orbitalu (prostoru), ve kterém se elektron nachází
    - ◊${m}, magnetické kvantové číslo, udává prostorovou orientaci orbitalu
        - ◊${-(n - 1)}--◊${n-1}
}

◊todo{Přidat tvary orbitalů + trik na to, jak se je naučit. Zmínit i fázi.Nalinkovat falstad.com/qmatom. Přidat obrázek z wiki: atomic\_orbital. Přidat tabulku orbitalů.}

◊meta{Rozpoznávání kvantových čísel z obrázku orbitalu je v testu.}

◊ls[#:t "Kvantová čísla pro složitější atomy"]{
    - vlnová funkce se konstruuje pomocí jednotlivých orbitalů
    - elektrony se vzájemně odpuzují
    - eketrony se steným ◊${n} tovří ◊em{slupku}, se stejným ◊${n} a ◊${l} tvoří ◊${podslupku}
        - elektrony na stejných podslupkách mají stejnou energii
}

◊ls[#:t "Obsazování orbitalů"]{
    - obsazování podle výstavbového principu
        - nejprve jsou obsazovány orbitaly s nejnižší energií (tj. nejnižším součtem ◊${n} a ◊${l})
    - Pauliho princip
        - v každém orbitalu jsou nejvýšedva elektrony, a ty se liší svým spinovým číslem
    - Hundovo pravidlo
        - orbitaly se stejnou energií (tzv. degenerované) se obsazují nejprve po jednom elekronu, všechny mají zezačátku stejný spin
}

◊section{Periodická soustava prvků}

◊ls{
    - rozdělení podle protonového čísla, tedy podle počtu elektronů atedy podle chemických vlastností
    - dělení prvků podle toho, jaké valenční orbitaly se zaplňují jako poslední: s-prvky, p-prvky (i d-prvky a f-prvky)
    - nejstabilnější stav orbitalů je u vzácných plynů, tzv. ◊em{oktetové pravidlo}
    - prvky pod sebou mají podobné vlastnosti
    - se Z se mění určité veličiny
        - roste atomový poloměr
            - v rámci periody je nejvyšší pro alkalické kovy
            - paradox: s obsazováním už zčásti obsazeného orbitalu se atomový poloměr změnšuje
        - klesá ionizační energie, tedy energie kterou musíme dodat, abychom odštěpili elektron
            - v rámci periody je nejvyšší pro vzácné plyny
        - elektronová afinita, tedy energie která se uvolní, když atom přijme elektron
}

◊section{Molekuly}

◊definitions{
    ◊term["molekula"]{
        Stálé seskupení atomových jader obklopených elektrony; tvoří samostatnou částici. Vazby mezi jednotlivými atomy se dají zrušit jen chemickou reakcí. Elektronová struktura vázaných atomů se liší od elektronové struktury volných atomů.

        Molekuly dělíme na homonukleární a heteronukleární.
    }
}

◊subsection{Chemická vazba}

◊definitions{
    ◊term["disociační energie"]{
        Energie, která se uvolní při přerušení chemické vazby. Je stejně velká jako vazbená energie, která vyjadřuje, jaký je pokles energie oproti stavu, kdy dva atomy vázány nejsou.
    }
}

◊ls{
    - při vzniku dochází k takovému přeskupení elektronů reagujících atomů, které vede ke snížení celkové energie soustavy
    -  energie, která se uvolní při rozpadu vazby, se nazývá ◊em{disociační}
    - vaznost atomu
        - C má vaznost čtyři
        - N, P tři
        - O, S dva
        - H jedna
    - elektrony, které ve valenční vrstvě chybí jednomu atomu, mu mohou být "doplněny" druhým atomem
}

◊ls[#:t "Délky vazeb"]{
    - nejkratší vazba je v ◊chem{H2}, 74,1pm
    - ◊chem{C-C} 150pm, ◊chem{C = C} 130pm, ◊chem{C # C} 120pm
    - ◊chem{C-N} 132pm
    - ◊chem{C - H} 109pm
    - vazba ale nemá konstantní délku, má pouze jednu preferovanou délku, kolem které "kmitá"
}

◊ls[#:t "Kovalentní vazba"]{
    - vzájemné sdílení dvou elektronů dvěma atomy
    - dochází k překryvu elektronových hustot, elektrony se nacházejí v ◊strong{molekulových orbitalech}, nejsme schopni určit, které elektron patří kterému atomu
    - může být polární a nepolární, podle toho, jaký je rozdíl mezi elektronegativitami zúčastněných atomů
    - molekula vzniklá z různých atomů má nenulový dipólový moment (je trochu polární, protože jeden z atomů si přitáhne sdílený elektronový pár blíže k sobě)
}

◊ls[#:t "Koordinační vazba"]{
    - jeden atom (donor) poskytuje celý elektronový pár druhému (akceptoru), který musí mít volný valenční orbital
    - vazba má parametry shodné s kovalentní vazbou, liší se jen vznikem
}

◊ls[#:t "Iontová vazba"]{
    - atomy jsou drženy elektrostatickými silami
    - iontové sloučeniny ve vodě disociují na anionty a kationty, obalené molekulami vody
}

◊ls[#:t "Molekulové orbitaly"]{
    - kombinace atomových orbitalů, výsledkem jsou dvě různé vlnové funkce
    - opět odpovídají rozložením elektronovým hustot kolem molekuly
    - záleží na tom, jestli jsou jednotlivé atomové orbitaly ve fázi, nebo jestli se jejich fáze liší
        - rozlišení vazebných a antivazebných orbitalů
        - jestli vazba vznikne nebo ne záleží na tom, jestli je více elektronů ve vazbených nebo antivazebných orbitalů
}

◊subsection{Hybridizace orbitalů}

Kombinování AO, vhodné pro popis vazeb a prostorového uspořádání. Například u C se skombinují (po excitaci) ◊${2s} a ◊${2p} orbitaly do tzv. ◊${sp^3} hybridizace.

Protože ◊${s} má nějakou danou fázi, původně symetrický ◊${p} který je s ◊${s} nyní skombinovaný, bude najednou asymetrický; strana se stejnou fázi jako původní ◊${s} bude v ◊${sp^3} větší.
Proto tvoří C pravidelný čtyřboký jehlan s úhly 109.5◊|deg| mezi C a H.

Uhlík může mít i hybridizaci ◊${sp^2} (které se neučastní všechny tři ◊${2p} orbitaly, ale pouze dva z nich). Například v ethenu, kde vzniká dvojná vazba, jeden uhlík je v ◊${sp^2} a druhý z ◊${p}. ◊${\sigma} vazba vzniká v ◊${sp} orbitalech, ◊${\pi} vazba vzniká na původních ◊${2p} orbitalech. Podobně existuje i ◊${sp} hybridizace, která se vyskytuje při vzniku trojné vazby.

◊ls[#:t "Molekuly složitějších molekul"]{
    - molekuly cyklické, s jednoduchými vazbami (např. cukry)
        - trans (židlička) a cis (vanička) konfigurace
    - aromatiké sloučeniny (benzenové jádro, mají ◊${4n + 2} ◊|pi| elektronů)
        - planární, ◊|pi| elektrony jsou delokalizované a všude jsou valstně částečně dvojné vazby, kolem kterých nejde rotovat
        - tendence reagovat přes stacking interactions, tak, aby si mraky delokalizovaných ◊|pi| elektronů nepřekážely
}

◊title{Stavba proteinů}

Proteiny se skládají z aminokyselin (AK), pro více informací o struktuře proteinů a jednotlivých AK viz ◊link["/doc/zaklady-bioinformatiky/notes.html#Struktura nukleových kyselin"]{struktura NA} a ◊link["/doc/zaklady-bioinformatiky/notes.html#Struktura proteinů"]{struktura proteinů} v zápiscích ze základů bioinformatiky.

◊ls[#:t "Stabilizace určité konformace"]{
    - struktura samozřejmě závisí na sekvenci atp., ale určitá konformace je "pohromadě" držena slabými vazbami
        - jsou slabé, ale působí jich hodně najednou
        - mají krátký dosah, závisí na teplotě
    - Van der Waalsovy interakce mezi dipóly
    - vodíkové můstky
        - délka asi 3◊|angs|, 2 + 1
    - stacking interakce
    - hydrofobní interakce (nepolární AK jdou do jádra proteinu)
        - molekula není s vodou schopna tvořit vodíkové vazby
        - když se takové molekuly nahromadí, umožní vodě vytvořit vodíkové můstky samotné uvnitř sebe, což je energeticky výhodné
    - interakce s vodou v roztocích
    - iontové interakce s ionty v roztocích, i uvnitř molekul
}

Je velice složité počítat se všemi těmito vazbami, když se například snažíme konkrétní protein namodelovat. Práci nám stěžuje i to, že kolem jednoduchých vazeb je možná rotace a vibrace (měnění délky vazby), takže proteiny jsou v čase dynamické.

◊definitions{
    ◊term["rotamery"]{
        Dvě AK, které mají stejné chemické složení, ale ve smém R-řetězci se liší rotací v nějaké z jednoduchých vazeb. Pokud je rozdíl v úhlech veliký, můžu se liši vlastnosti obou AK.
    }
}

◊section{Aminokyseliny}

◊meta{Je nutné umět zkratky, vzorce i základní vlastnosti a rozdělení všech AK.}

◊ls{
    - amfoterní charakter (◊chem{NH2} a ◊chem{COOH} si navzájem předají vodík), vzniká ◊em{amfion}, někdy také ◊em{zwitterion}
    - dělí se na nepolární, polární a nabité polární
}

◊img["ak.jpeg"]{Seznam aminokyselin a jejich rozdělení}

◊ls{
    - dva cysteiny spolu tvoří sulfidický můstek
    - všechny proteiny (alespoň hned po translaci) začínají na Met, u bakterií je to N-formylmethionin
    - AK mo­hou být mod­i­fikovány (oligosacharidy, sul­fa­ti­zace, es­ter­i­fikace, fos­fory­lace, ami­dace, atd.)
    - průměrná hmot­nost AA je 110g/mol
    - existuje i několik vzácných AK
        - selenocystein, pyrrolysin, N-formylmethionin
        - jsou kódovány STOP kodony
}

◊subsection{Disociace AK}

Měříme poměr koncentrací nedisociovaných a disociovaných kyselin.
◊$${\ce{HA <=> A^- + H^+} \\ K_a = \frac{[\ce{H^+}][\ce{A^-}]}{[\ce{HA}]},}
kde ◊${K_a} je takzvaná ◊em{disociační konstanta}. Pokud přidáme nějakou kyselinu do vody, pH se časem ustálí na ◊${\text{pK}_a} kyseliny.

◊slide[23 26 #:s 1]
Definujeme také ◊em{izoelektrický bod} AK, což je bod, kdy kyselina nemá žádný náboj. Počítá se jako průměr jednotlivých ◊${\text{pK}_a} všech možných forem AK, podle toho, který z vodíků je odštěpený. Pro vodík v ◊chem{COOH} je ◊${\text{pK}_a \approx 2}, pro ten v ◊chem{NH3} ◊${\text{pK}_a \approx 10}.

◊subsection{Další vlastnosti AK}

◊slide[32 #:s 1]
◊strong{Hydrofobicita} udává, jako moc je protein hydrofobní; značí se ◊${R}, a má kladné hodnoty pro hydrofobní proteiny.

◊slide[33 #:s 1]
◊ls[#:t "Chiralita"]{
    - z uhlíku vychází čtyři různé substituenty
    - u AK je jím ◊chem{C\alpha}
    - rozlišení optických L a D izomerů
        - L-izomer: pokud H míří k nám, COOH nahoru, potom po směru hodinových ručiček: ◊strong{CO-R-N}
        - optické izomery pootáčejí rovinu polarizovaného světla
        - L/D izomery nestáčí tuto rovinu nutně vždy na stejnou stranu
    - většina přírodních AK jsou L-izomery (vyjímky například buněčné stěny bakterií)
    - může se stát, že máme více chirálních uhlíků, poté existuje ◊${2^k} forem molekuly
}

◊section{Peptidová vazba}

◊slide[44 45 #:s 1]
Vazba mezi dvěma AK, které se účasntní původní ◊chem{COOH} a ◊chem{NH2} skupiny.

◊slide[46 #:s 1]
Vazba je planární, protože dvojná vazba ◊chem{C=O} někdy přejde na vazbu ◊chem{C-N} (tzv. ◊em{mezomernie}). Rotace je tedy možná pouze v "rozích" vazby, kolem vazeb vycházejících z ◊chem{C\alpha}.

◊slide[50 51 52 #:s 1]
◊ls[#:t "Torzní úhly"]{
    - rotace kolem ◊chem{C\alpha} jsou možné, ale kyslík a vodík si při určitých hodnotách rotace překážejí
    - jsou povolené dvě konformace: ◊strong{cis} a ◊strong{trans}
        - zpravidla u všech proteinů se vyskytuje konformace trans
        - cis konformace jen výjimenčně u prolinu
    - torzní úhly: ◊${\varphi} značí úhel ◊chem{C-N}, ◊${\psi} značí úhel ◊chem{C-C}
        - povolené hodnoty těchto úhlů můžeme zanést do tzv. ◊em{Ramachandranova grafu}
        - v Ramachandranově grafu nejprve vypíšeme oblasti pravděpodobných hodnot, teoreticky možných hodnot a nepravděpodobných hodnot, poté srovnáma naměřená data s těmito zónami
        - určité oblasti odpovídají určitým sekundárním strukturů, viz slide ◊slide[53 #:s 1 #:inline #t]
}

◊section{Sekundární struktury}

◊slide[57 #:s 1]
◊ls[#:t "Helikální"]{
    - ◊alpha helix
        - pravotočivá šroubovice
        - stabilizován vodíkovými můstky mezi vodíkem aminoskupiny a kyslíkem karbonylu
        - vzálenost vodíkových můstků je 4AK
        - 3,6 AK na otáčku
        - upostřed není dutina
        - postranní řetězce vždy směřují ven
    - ◊${3_{10}} helix
        - interakce mezi první a třetí AK
        - vzácnejší, vyskytuje se na okrajích sekundárních struktur
    - ◊pi helix
        - interakce mezi první a pátou AK
        - vzácnejší, vyskytuje se na okrajích sekundárních struktur
}

◊slide[56 #:s 1]
◊ls[#:t "Beta struktury"]{
    - interaguje opět vodík na aminoskupině s karbonylem, ale mohou být v rámci řetězce i daleko od sebe
    - paralelní a antiparalelní (ten je stabilnější)
}

◊title{Metody pozorování proteinů}

◊section{Spektrofotometrie}

◊slide[27 #:s 2]
Světlo: viditelné elektromagnetické záření. Pro spektrofotometrii (zde dále SFM) proteinů je vhodnější UV záření.

◊ls[#:t "Lambertův-Beerův zákon"]{
    - určuje, jakým způsobem prochází světlo vzorkem
    - vzorek může světlo pohlcovat (na tom naříklad záleží jeho barva), nebo rozptylovat
        - v obou případech pozorujeme intenzitu světla před a po projití vzorkem
}

Konkrétní znění zákona se dá vyjádřit vzorcem
◊align${
    T &= \frac{I}{I_0} \\
    A &= -\log T = \varepsilon \cdot l \cdot c,
}
kde ◊${I} a ◊${I_0} značí inzentity světla, ◊${T} je ◊strong{transmitance} vzorku, ◊strong{A} je absorbance vzorku a ◊${\varepsilon} je molární extinkční koeficient. Pokud íiž známe absorbanci naší látky, můžeme pomocí tohoto vzorce například spočítat jejich koncentraci.

◊slide[32 #:s 2]
◊ls[#:t "Absorbce světla molekulou"]{
    - molekula má v základním stavu
    - po absorpci fotonu se dostane celá molekula do excitovaného stavu, protože jeden z jejích elektronů přejde do vyššího orbitalu
    - excitovaná molekula při návratu do základního stavu vyzáří energii
    - velikost vyzářené energie závisí na růzdílů energií orbitalů, mezi kterými elektron přecházel
}

◊subsection{Spektrofotometrie v praxi}

SFM je nedestruktivní metoda, což je její velká výhoda.

◊slide[33 #:s 2]
Proteiny dobře absorbují světlo kolem 225nm (tam absorbuje peptidová vazba) a případně i kolem 260nm, když mají nějaké aromatické AK. Všechny AK absorbují různě moc, takže pokud známe složení proteinu a vidíme absorpční spektrum vzorku, umíme z něj vypočítat koncentraci. ◊${\varepsilon} pro jakýkoli protein o známé sekvenci se totiž dá dopočítat.

Nukleové kyseliny zpravidla absorbují kolem 260nm. U nukleových kyslein se užívá například k posouzení stupně a průběhu denaturace, k posouzení homogenity Pro sekvence DNA a RNA se koncentrace stanovuje trochu jinak,
◊$${100 \cdot \frac{A_{260}}{K} = c.}
Pro dsDNA ◊${K = 2}, pro ssDNA ◊${K = 2,5}, pro ssDNA ◊${K = 3}, pro oligo DNA ◊${K = 3,3} -- ◊${K = 5}.

◊section{Cirkulární dichroismus}

◊slide[52 #:s 2]
◊definitions{
    ◊term["lineární polarizace světla"]{
        Udává rovinu kmitání elektrické vlny světla. Běžné světlo není polarizované, i když při odrazu k částečné polarizaci dochází.

        Ke změně polarizace můžeme použít polarizační filtry, které propustí pouze světlo, které kmitá v jedné konkrétní rovině.
    }

    ◊term["cirkulární polarizace světla"]{
        Pokud v polarizovaném světle zpozdíme kmitání magnetické složky, například o čtvrt vlny, výsledný světelný vektor, který se součtem vektoru elektrického pole a vektoru magnetického pole, se bude postupně při kmitání otáček.

        Rozlišujeme pravotočivou a levotočivou polarizaci.
    }
}

Absorbce cirkulárně polarizovaného světla záleží na chiralitě molekul a na levotočivosti a pravotočivosti světla. ◊strong{Cirkulární dichroismus} je rozdíl mezi absorbancí levotočivě a pravotočivě polarizovanho světla.

Cirkulární dichroismus jednotlivých SS se liší, viz obrázek. Podobně se liší CD pro protein s nějakým foldem a denaturovaný protein. Pokud změříme CD proteinu, můžeme z výsledné spektrální křivky zjistit procentuální podíl jednotlivých SS.

◊img["slides-2/slide-55.jpg"]{Hodnota cirkulárního dichroismu pro různé sekundární struktury}

◊section{Gelová elektroforéza}

Pomocí ELFO můžeme zjistit velikost proteinu, odhalit počet proteinů nebo odhalit kontaminaci vzorku. Nejběžnější forma je ◊strong{SDS-PAGE}, SDS polyakrylamidová gelová elektroforéza.

◊slide[37 45 #:s 2]
◊ls[#:t "Základní princip ELFO"]{
    # do gelu dáme do několika řad (line) vzorky (zpravidla nahoru)
    # na gelu vytvoříme elektrické napětí
    # všechny vzorky putují na druhou stranu gelu (zpravidla dolů), jejich ryhlost se (ideálně) liší pouze podle jejich velikosti
    # po vypnuté elektrického proudu máme nedál od startu nejlehčí vzorky, nejblíže jsou vzorky nejtěžší
}

Musíme zařídit, aby byl gel tak akorát hustý, a aby všechny vzorky opravdu putovaly na stejnou stranu gelu (ke stejné elektrodě). Zároveň by bylo dobré nakonec vzorky nějak obarvit, ať je vůbec vidíme.

Protože nechceme proteiny dělit podle jejich tvaru, ale jen podle velikosti, povaříme je před ELFO v denaturačních činidlech.

◊subsection{Gel}

Polyakrylamidový gel je sice velice náročný na přípravu, má ale výborné rozlišovací schopnosti: například při dělení DNA lze rozpoznat DNA dlouhou 500bp od 501bp.

◊ls{
    - polykarylamidový gel, nejčastěji 3%--15%
    - ◊chem{akrylamid + bisakrylamid}
        - vzniknou zesíťovaná vlákna
        - aby proběhlaradikálová polymerace, potřebujeme také iniciátor (persíran amonný nebo UV-ozářený riboflavin) a stabilizátor volných radikálů (TEMED)
        - musí probíhat v anaerobních podmínkách
    - jeho viskozita zajišťuje, že velikým molekulám je při pohybu kladen větší odpor než malým
        - tato konkrétní vlasnost záleží na jeho koncentraci, pro různé vzorky se používají různě koncetrované gely
        - pro srovnání velmi rozdílných vzorků se používají ◊strong{gradientové gely}, jejichž hustota se seshora dolů zvyšuje
}

Na tento gel se nanáší ještě ◊em{zaostřovací gel}, přechod mezi ním a PAG pak tvoří jakousi "startovací linii", na kteoru se seřadí a vyrovnají porovnávané vzorky.

◊subsection{SDS}

◊slide[46 #:s 2]
SDS (sodium dodecyl sulfát) se váže na proteiny. Velké proteiny vážou více SDS než malé proteiny. SDS má dvojí význam:
◊ls{
    # zabraňuje tomu, aby se proteiny samovolně opět nafoldovaly
    # má záporný náboj, který "přebije" náboj proteinů a všechny proteiny tím pádem budou putovat ke kladné elektrodě
        - větší proteiny sice budou taženy větší silou, ale zase budou více brzděny gelem
}

◊subsection{Barvení}

Proteiny chceme samozřejmě nějak vizualizovat, aby nám ELF ovůbec k něčemu byla.

◊slide[48 49 #:s 2]
◊ls[#:t "Coomassie Brilliant Blue"]{
    - nejběžnější barvivo
    - běžně má hnědooranžovu barvu, ale když se naváže na protein, změní barvu na modrou
        - váže se několikerým způsobem, vždy ale mění barvu
        - množství proteinu se dá posoudit podle toho, jak moc modrý je výsledný obarvný roztok
}

Intenzita proužku vypovídá o tom, jak moc koncetrované jsou v daném místě proteiny. Zároveň ale platí, že malé proteiny se obarvují hůře, takže nebudou tak výrazné.

◊section{Fluorescence}

◊definitions{
    ◊term["fluorescence"]{
        Světlo emitované atomem po absorbci elektromagnetického záření. Energie fluorescence pochází z přechodu částice z prvního excitovaného stavu ◊${S_1} do základního elektronového stavu ◊${S_0}. Délka fluorescence je v řádu nanosekund.
    }
}

◊ls[#:t "Výhody"]{
    - citlivost vůči okolí molekuly (teplota, viskozita, polarita, pH atd.)
    - vhodná doba trvání
    - citlivost (nM koncentrace analyzováneho vzorku)
    - možnost provádět pokusy s jednotlivými molekulami (protože snímáme jednotlivé fotony)
}

Schéma fluorometru: na fluoreskující vzorek svítíme monochromatickým paprskem, měříme emisní spektrum.

◊img["slides-2/slide-61.jpg"]{Schéma fluorometru}

◊slide[62 #:s 2]
◊ls[#:t "Jabłonského diagram"]{
    - rozebírá vibrační hladiny zákadního stavu ◊${S_0} a jejich schopnost absorbovat světlo, viz slide
    - vlnová délka světla musí odpovídat rozdílům energií mezi energetickými slupkami
    - absorpční a emisní spektra jsou si podobná
}

◊slide[64 #:s 2]
Z emisních spekter Trp můžeme poznat, v jakém prostředí (solventu) se nachází a jestli je uvnitř či na povrchu proteinu. Posun k červené oblasti (ale stále v rámci UV) ukazuje na přítomnost ◊chem{H20}.

◊title{Nové zápisky v metodách}

◊ls{
    - chceme znát i více věcí než je nstrukturu
    - koncentrace, mol.hmotnost, sekvence (introny x exony -- sekvenace proteinů), SS, rozměry a tvar molekuly
    - až po těchto věceh zjistíme 3D strukturu
    - a až poté řešíme interakce mezi proteiny, dynamiku a mechanismus sbalování
}

◊todo{Co je Assay?}

== KONCENTRACE proteinů
- spektrofotometrie: 280 / 220 nm
- kolorimetrie
    - biuretová reakce a Cu(II) vazba na 4N
    - Lowry: biuret a Folinovo reagens
    - BArdfordová: Coomassie Blue G250
- denzitometrie, porovnání se standardem na ELFO

=== biuretová reakce [slide]
- biuret je kondenzát močoviny
- umí koordinovat reakci s Cu
    - podobná reakce/koordinace probíhá i na polypeptidu, němělo by záležet na konkrétní AK sekvenci
- Cu se dá chelatovat pomocí BCA, tvoří komplex, který absorbuje velmi silně

coomassie brillienat blue G-25
- přidává molekule záporný náboj
- zabarvuje se podle toho, se kterou částí proteinu reaguje
    - nedá se používat v přítomnosti detergentů

== SS + 3D Struktura
- různé druhy, závisí na torzních úhlech
- pouze na základě záměn AK můžeme získat mnoho různých struktur (SS, TS)
- elektrostatické síly, H můstky, hydrofobní interakce, disuflidové vazby

== PRÁCE S PROTEINEM
1) produkce proteinu
- kdysi z původního zdroje
- nyní rekombinantně (kvasinky, e. coli)
    - není úplně dobré dělat eukaryot. proteiny v bakteriích
    - můžeme získat mutantní formy
    - můžeme přidat afinitní značky, pomocí kterých můžeme protein "vychytávat"
- důležitá je stabilizace (chlazení, nepřítomnost proteáz, případně vychytání proteáz pomocí speciálních nerozdělitelných peptidů)

SOLUBILIZACE [slide]
- vsolování, u všech proteinů to zvyšuje rozpustnost, protože bývají více stíněny náboje AK na povrchu, už se netvoří agregáty proteinů
- vysolování, odebírání vody
- organická rozpouštědla
- detergenty, denaturační činidla (ale nebudou v nativní konformaci)
- změna pH, pro každý protein je ideální pH s vyšší rozpustností

◊todo{Co je to chromatografie?}

=== CHROMATOGRAFIE
- pokud chceme proteiny přečišťovat
1) ionexová chromat
- podklad
    - pevný, nerozpustný
    - intoy z podkladu (A, K) jsou vyměňovány za ionty v rotozku (B, C)
    - Anex, Katex [ZE SLIDU]
- protein
    - polyelektrolyt
    - vazba anexu nebo katexu podle pH a pI
    - kompetice s ostatními ionty v roztoku

- volba vhodných podmínek pro vazbu
    - nechceme vázat kontaminující proteiny
- výběr podmínek pro uvolnění z nosiče
    - druhý krok selekce (zbavení se protilátek)
- vazba na kolonu
    - můžeme preotin neustále vázat a uvolňovat
    - můžeme sbírat jednotlivé frakce

[slide schématu ionexové chromat.]

- ionexů je mnoho, liší se inertními materiály, ze kterých jsou vyrobeny

2) hydrofobní chromat
- hydrofobní zbytky AK jsou umístěny uvnitř proteinů
- malá část je exponována do vnějšího prostředí
- vazba na silně hydrofobní povrch
    - RPC --- chromatografie s obrácenými fázemi (protein už tozmotaný)
    - HIC --- hydrofobní chromatografie

HIC
- nosičem je agaróza (SPA) + hydrofobní skupiny (fenol, oktyl)
- slabé hcydrofobní interakce
- eluce
    - klesajíím gradientem solí
    - stoupajícím gradientem detergentů
    - stoupajícím pH
- proteiny nejsou denaturované
- rozdělují se podle nativní hydrofobicity

RPC
- nosič
    - imobilizovaná nepolární kapalina
    - alkylové řetěce
    - fenyl-silika
- silné hydrofob. interakce
- eluce
    - hydrofobními látkami (organic. tozpouštědla)
- protein je denaturován

3) afinitní chromat
- agaróza aktivovaná bromkyanem, navázání nejrůznějších ligandů
- ukotvení ligandu na inertní nosič na koloně
    - máme látku, která se vážěe na kolonu a zároveň fúzuje s naším proteinem
- oplach kontaminací
- odmytí cílového proteinu
    - jiným ligandem s vyšší afinitou
    - pH, iontová síla, teplota

jedna z metod: his-tag
- komplex 6 His zařazený na konci proteinů (N/C - záleží na tom, jestli ji tam chceme nechat)
    - na histidinovou vrstvu se naváže nikl (AP, HRP), Ni je ligand
- pokudp přidáme imidazol, protein se [TODO CO UDĚLÁ]

druhá z metod: biotin [slide]
- vysoce afinitní vazby mezi bioitem a avidinem
- více druhů avidinu, streptavidinů, neutravidinu (ty jsou odvozeny z avidinů)
- naváže se avidin na protein, pak avidin s proteinem na biotin v koloně
    - někdy se ale váže biotin přímo na nějako uAK

další z metody: GST
- glutation-S-transferáze
- plazmid ze ktrerého exprimujeme protein
- TODO dna wtf?

4) chromat na hydroxyapatitu
- kompex H3PO4 a Ca
- váže anionty díky kladným nábojům Ca, ale i kationty díky H3PO4
- dobře váe preoteiny
    - můžeme proteiny proplachovat, například od lipopolysacharidu, který mi tam zůstal z producenta (bakterie)

5) [to sem nepatří] HPLC
[TODO doplnit z přednášky]

6) gelová filtrace (trochu patří do chromat) [slide x2]
- dělení podle velikosti a tvaru molekul
- stacionární fáze: kuličky hydratovaného gelu
- velké molekuly proteinů budou putopat mimo kuličky gelu, malé molekuly budou vstupovat do gelu
- velké molekuly půjdou nejrychleji
    - Vcelkový = Vkuliček + Vmrtvý
    - konkrétní látka má konstantní poměr Veluční / Vmrtvý
    - vylučovací limit je Mw nejmenší molekuly, která neprojde gelem
- distribuce rozdělení pórů v gelu => rozdělení podle rychlosti

7) molekulová filtrace
- [TODO DOPLNIT Z přednášky]

◊section{ELFO proteinů}
- sds page dělí proteiny podle velikosti/hmotnosti
- nativní PAGE dělí podle náboje, někdteré proteiny do gelu nevstoupí (CN - clear native)
- [slide] 20kDa až 1200kDa, gradientový gel
- preoteiny nejsou denaturované, mohou tvořit komplexy
- alternativa je BN (blue native), je tam nadbytek coomassie blue, které dává proteinu záporný náboj, ale nedenaturuje ho (na rozdíl od SDS)

2D ELFO
- koupený gel s gradientem pH
- proteiny se budou pohybovat gelem tam, kde bude pH odpovídat jejich pI
    - izoelektrická fokusace: proteiny putují do velcie úzkých zón
    - normálně by se rozdělily taky, ale ne do úzkých zón
- tento gel se dá položit kolmo na další gel [slide]
    - proteiny putují z fokusovaných prožků a rozdělí se podle moleulová hmotsnoti
- [TODO doplnit z přednášky něco u 2D ELFO o gelech]

BARVENÍ GELU
- coomasiia je nejčastější
    - opáchneme SDS vodou
    - barvíme 1h, hnědá -> modrá
    - je nutné odbarvit methanolem, octovkou, vodou
- stříbro
    - velice citlivé
    - váže se na různé AK
    - vyvoláme Ag+ -> Ag0, získáme hnědočernou barvu
    - během vyvolávání se používá formaldehyd, glutaraldehyd
        - kovalentní modifikace proteinů, proteiny se nedají dál použít
- zinkem
    - velmi citlivé, negativní barvení
    - imidazol váže zinek (i nikl btw), elý gel je bíle opalescentní
    - kde jsou proteiny, gel zůstane průhledný
- fluorescenční
    - nejčastější nekovalentní
    - SYPRO
        - barvení v ejdnom kroku, bex fixace, bez odbarvování
        - intenzita flouorescence roste lineárně s množstvím

[TODO doplnit od fluorescenčních až po kvalitu]

HODNOCEÍ KVALITY PROTEINŮ
- jak zjistit, jestli při práci s proteinem nedošlo k nějaké chybě
- sds-page: je protein fragmentován
- wester blot - pje náš proten opravud ten, který myslíme? (protilátky)
- NMR spektrum fingerprint
- cirkulární dichroismus
- DLS (TODO: co to je?)
- chromatografie:

◊section{Sekvenace proteinů}
- někdy se stane, že DNA sekvence nepřechází celá do proteinu
- důležitá pro krystalografii, protože ta musíme znát přesnou sekvenci abychom z krystalu něco vyčetli
- umožňuje odvození SS
- odhalení dědičných poruch a dispozic k onemocněním


příprava na sekvencai
[TODO doplnit]

nalezení koncových AK
- pomocí exopeptidáz, štěpíme protein z jednoho nebo druhého konce (nejlépe pro <5 posledních AK)
- C koncová AK
    - karboxypeptidáza A a B, z hovězího pankreasu
    - ale neštěpí určité AA
- sledujeme růst koncentrací AK v rotozku, podle pořadí toho, jak se mění, odhadujeme pořadí kocnocývh AK


◊title{Struktura nukleových kyselin}

DNA a RNA se skládají z bazické, cukerné a fosfátové části. Páteř tvoří cukr (ribóza, deoxyribóza), který se střídá se zbytky kyseliny ◊chem{H3PO4}.

◊section{Stavební jednotky}

◊slide[2 #:s 3]
◊ls[#:t "Kyselina trihydrogen fosforečná"]{
    - každý z vodíků může být disociován
    - ◊chem{H3PO4} někdy tvoří dimer, ◊em{pyrofosfát} ◊slide[3 #:s 3 #:inline #t]
        - spojené makroergní vazbou (při rozštěpení se uvolní velké množtsví energie)
        - makroergní proto, že jsou k sobě blízko kyslíky (vzniká mechanické pnutí)
    - trifosforečná kyselina bývá vázána v nukleotidech
}


Základním cukrem je ribóza a deoxyribóza. Základní strukturní vlastnosti cukrů jsou však předvedeny na glukóze.

◊todo{Doplnit, jak vypadá D-glukosa v cyklické formě.}

◊slide[5 6 #:s 3]
◊ls[#:t "Glukóza"]{
    - pojmenování podle polohy OH skupiny na chirálním uhlíku, který je nejvzdálenější od aldehydické skupiny
        - v lineárním Fisherově zakreslení: OH vpravo -> D-forma, OH vlevo -> L-forma
    - pokud dojde k vytvoření cukerného heterocyklu, můžeme rozlišit dvě formy podle polohy OH na ◊chem{C1}
        - ◊alpha, OH míří dolů
        - ◊beta, OH míří nahoru
}

◊slide[8 9 #:s 3]
◊ls[#:t "Ribóza"]{
    - v NA cyklizuje do pětičetného cyklu (ribofuranóza), může ale tvořit i šestičetný cyklus (ribopyranóza)
    - uhlíky se v rámci NA značí s čarou
        - fosfát je v NA vázaný na ◊chem{C3} a ◊chem{C5}
        - na ◊chem{C1} je přes N-glykosidickou vazbu navázána dusíkatá báze
        - na ◊chem{C2} je OH skupina (RNA), případně tam není (DNA)
    - celkově je tedy v NA (případně deoxy verze)
    - cyklus ◊strong{není planární} ◊slide[10 #:s 3 #:inline #t]
        - pokud ◊chem{C2} míří na stejnou stranu jako ◊chem{C5}, je NA takzvaně ◊em{endo} (případně C2 endo)
        -pokud míří ◊chem{C2} na opačnou stranu, je NA ◊em{exo} (případně C2 exo)
}

◊slide[12 #:s 3]
V NA tedy nacházíme ◊strong{◊|beta|-D-ribofuranózu}, a to buďto endo nebo exo formu. Samozřejmě v DNA je deoxy- varianta tohoto cuktu, viz slide. OH skupina má vliv na reaktivitu, DNA je proto mnohem stabilnější než RNA.

Cukr s fosfátem (navázaným přes fosfodiesterovou vazbu) tvoří tzv. ◊em{cukrfosfátovou kostru} NA.

◊img["slides-3/slide-13.jpg"]{Dusíkaté báze nukleových kyselin}

◊ls[#:t "Dusíkaté báze"]{
    - puriny jsou na ◊chem{C1} v cukru vázány dusíkem ◊chem{N9}, pyrimidiny dusíkem ◊chem{N1}
        - puriny jsou vlastně kondenzáty pyrimidinu a imidazolu
    - Watson-Crickovo párování: párování GC, AT, na základě vodíkových můstků ◊slide[13 #:s 3 #:inline #t]
    - v DNA je nahrazen thymin uracilem (který se liší jen jednou metylovou skupinou)
    - kromě těchto základních se vyskytují v DNA i další, minoritní, báze: methylované báze a hydroxymethylované báze, uracil
    - uracil má někdy tvar pseudouridinu, dihydrouridinu atp. ◊slide[37 #:s 3 #:inline #t]
    - jeden pár bazí má asi 660g/mol, neboli 660Da
}

◊ls[#:t "Párování bazí"]{
    - keto skupina je vždy akceptor
    - amino skupina vždy donor
    - sekundární amin, imin: mohou fungovat jako akceptor
}

◊section{Struktura}

◊slide[16 #:s 3]
◊ls{
    - vlákna v DNA jsou antiparalelní, jedno je ve směru 3'->5' a druhé 5'->3'
    - zaujímají strukturu dihelixu (Watson, Crick)
        - difrakční obrazec spirály má tvar X
}

◊img["slides-3/slide-21.jpg"]{Nukleosid, nukleotid}

Názvolsoví nukleotidů a nukleosidů je trochu zmaneté:
◊ls{
    - adenin - adenosin
    - cytosin - cytidin
    - guanin - guanosin
    - thymin - thymidin
    - uracil - uridin
}

◊ls[#:t "Synklinální a antiklinální forma"]{
    - rozdělení forem podle toho, na jakou stranu je rotovaná báze
    - rozlišuje se pouze u purinů
    - pokud purin míří k cukrfosfátové kostře, jedná se o formu ◊em{synklinální}, v opačném případě se jedná o formu ◊em{antiklinální}
    - antiklinální forma je výhodnější, a tedy častější
        - jedinou výjimkou je ◊link["#Konformace Z"]{Z forma DNA}
}

◊meta{Syn a anti konfigurace ◊link["http://proteopedia.org/wiki/index.php/Syn_and_anti_nucleosides"]{jsou na proteopedii} s pěknými obrázky. A jsou tam i další fajn věci.}

◊slide[42 #:s 3]
◊ls[#:t "Keto-enol tautomery"]{
    - keto skupina
        - uhlík a kyslík vázané dvojnou vazbou
        - kyslík má vždy volný elektronový pár, funguje jako akceptor vodíkové vazby
    - enol skupina je OH
    - pokud budeme mít OH skupinu v blízkost idvojné vazby, bude spontánně docházet k přeskupení na keto formu
        - Erlenmeyerovo pravidlo
}

◊slide[43 44 #:s 3]
◊ls[#:t "Amid, imid"]{
    - primární, sekundární, terciální aminy (viz slide výše)
        - pokud je dusík vázán dvojnou vazbou, jedná se o ◊em{imino} skupinu
    - pokud je amin v blízkosti keto skupiny, jedná se o amid
        - podobně existují imidy
}

◊img["slides-3/slide-47.jpg"]{Tautomery nukleotidů}
◊img["slides-3/slide-48.jpg"]{Tautomery nukleotidů}

U všech bazí můžeme pozorovat takzvané ◊strong{tautomery}, konkrétně amid+keto nebo imid+enol formy. Přestože jsou amid+keto formy častější, musíme při práci s NA počítat s tím, že semtam mohou mít některé báze velice odlišnou stavbu, totiž imid+enol.

◊slide[56 #:s 3]
◊ls[#:t "Struktura tRNA"]{
    - tři báze dole na smyčce nemají s čím párovat, trčí ven ze smyčky
        - tvoří antikodon, párují s třemi bázemi na mRNA
        - v jedné z pozic je určitá variabilita, jev ◊em{kolísavé párování} (wobbling) => různými triplety je kódovaná stejná AK
            - například ve třetí pozici se může nacházet inosin (hypoxantin + ribóza) ◊slide[59 #:s 3 #:inline #t], který může párovat s C, U i G
            - tRNA je méně než 64, což je počet, který by byl teoreticky nutný k zakódování všech trojic
    - v horní části vázaná AK
}

◊subsection{Hoosteenovo párování}

Běžné Watson-Crickovo párování je postavené na tom, že spolu párují pouze AT, CG, a všechny puriny jsou v antiklinální podobě. K párování ale může docházet i když jsou puriny v synklinální podobě (zvláště u adeninu, cytosin by musel mít kladný náboj).

◊img["slides-3/slide-50.jpg"]{Hoogsteenovo párování}

◊slide[51 52 53 #:s 3]
To znamená, že puriny jsou "na druhé straně" schopny párovat s ještě jednou bazí. Vznikají takzvané ◊em{triády}.

◊slide[54 #:s 3]
◊ls[#:t "G-kvadruplex"]{
    - čtyři guaniny v jednom patře
        - vlákno se dvakrát ohýbá (viz slide)
    - velice pevná struktura
    - často v telomerách na koncích chromozomů, aby nebyl degradován endonukleázami
}

Někdy se do běžného DNA helixu vmezeří třetí strand, který se na jedno z vláken naváže H-párováním. Toto třetí vlákno musí mít tzv. polypurinovou část, aby tuto vazbu mohlo vytvořit. Podobně se může mezi vlákna DNA vmezeřit i vlákno RNA.

◊section{Reaktivita bazí}

◊slide[63 #:s 3]
◊ls{
    - reakce jsou stejné jako u jiných heterocyklických sloučenin
    - výjimka: pyrimidiny někdy reagují s podobnou molekulou
        - u pyrimidinů je ◊chem{C5=C6} podobná izolované dvojné vazbě
        - naříklad ◊strong{thyminový dimer} (viz slide)
        - při působení UV záření
    - výjimka: alkylace purinů na ◊chem{N7} destabilizuje glykosidickou vazbu a vede k depurinaci
}

Většinu bazí můžeme brát jako aromatické molekuly. Součástí interakce bazí jsou tedy i stacking interakce napříč patry.

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

◊todo{Přepsat tabulku srovnání místo obrázku slidu.}

◊slide[20 22 24 #:s 4] Existují tři hlavní rodiny konformací: ◊strong{A}, ◊strong{B} a ◊strong{Z}.


◊slide[38 #:s 4]

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
    - uracil a cytosin na špičce s ničím nepárují
        - cytosin stacking interaguje s párem pod sebou
        - uracil ční do prostoru (nejspíš málo konzervovaná pozice)
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

◊em{ELFO se dělá jak pro DNA, tak pro RNA. V tomto textu se soustředíme sice pouze na popis DNA ELFO, ale pro RNA bude vše fungovat velice podobně.}

Funkce podobná ◊link["#Gelová elektroforéza"]{ELFO preoteinů}, s tím rozdílem, že NA se dají rozdělit nejden podle velikosti (hmotnosti), ale také podle topologie. ◊slide[20 21 #:s 5 #:inline #t]

◊section{Princip funkce pro DNA}

◊ls{
    - DNA má v neutrálním a bazickém prostředí záporný náboj
        - konkrétně jeden záporný náboj na jeden bp
    - DNA vždy míří ke kladné katodě, není potřeba žádná molekula SDS ani nic podobného
}

Na každou molekulu DNA působí elektrická síla
◊$${F = q \cdot E,}
kde ◊${E} je intenzita elektrického pole a ◊${q} je náboj molekuly. Působí na nic však také třecí síla gelu
◊$${F_t = f \cdot v,}
kde ◊${v} je rychlost pohybu molekuly a ◊${f} je koeficient tření gelu a DNA. Po dosažení rovnovážného stavu tak platí
◊$${F = F_t \implies v = q \frac{E}{f}.}
Někdy se zavádí speciální veličina ◊em{pohyblivost}, pro kterou platí
◊$${\mu = \frac{v}{E} = \frac{q}{f},}
tedy dává do vztahu rychlost molekuly a sílu elektrického pole.

◊slide[4 #:s 6]
◊ls[#:t "Ovlivnění pohyblivosti"]{
    - iontovou silou roztoku
        - pokud budou v roztoku kationty, mohou DNA obalit a ta bude poté putovat pomaleji
    - elektrolýzou u elektrod
        - může se měnit pH, což může mít vliv na stavbu DNA a RNA
    - elektroosmózou
        - elektroosmóza je putování malých nabitých iontů a vody skrz gel, které může mít opačný směr než je směr putování DNA
    - tvorbou tepla
        - vlastnosti roztoku jako viskozita, odpar, vodivost a denaturace jsou ovlivněny teplem
        - vzorek se může putováním zahřívat
}

Protože má DNA jeden náboj na bp, je poměr mezi hmotností a nábojem DNA kostantní---to znamená, že větší DNA je sice těžší (což ji zpomaluje), ale je zároveň silněji přitahována k anodě (což ji zrychluje), čili výsledkem by mohla být konstantní rychlost putování pro všechny DNA. Naštěstí mají menší fragmenty DNA menší koeficient tření, takže se přeci jen dají na ELFO rozeznat.

◊section{Příprava}

ELFO se provádí v kapilárních systémech gelů, které částečně blokují difúzi do stran a zaručují tím, že nebudeme mít proužky příliš rozmazané. Nejčastejji se používá agarózový gel, popřípadě polyakrylamid.

◊slide[7 9 #:s 6]
◊ls[#:t "Agarózový gel (AG)"]{
    - agaróza je lineární polysacharid z mořských řas, složený z D-galaktózy a 3,6-anhydro-L-galaktózy
    - snadno se připravuje a snadno se s ním manipuluje
    - hodí se pro DNA o velikosti 1000bp -- 50000bp, při pulzní ELFO až do 2Mbp
    - je to přírodní produkt (relativně drahý), takže jednotlivé šarže se mohou lišit, a to i od stejného výrobce
    - více koncentrovaný gel se hodí pro práci s malými molekulami DNA
        - pro 100bp--2kbp se hodí 2% agaróza
        - 5kbp -- 50 kbp se hodí 0,3% agaróza
        - zbytek mezi těmito hodnotami
}

◊ls[#:t "Pufry"]{
    - ELFO mobilita DNA je ovlivněna složením a iontovou silou ELFO pufru
        - v nepřítomnosti iontů je elektrická vodivost velmi nízká, DNA putuje velmi pomalu a pruhy jsou rozmazané
    - abychom měli homogenní elektrické pole přes celou délku bloku, potřebujeme pufr
    - pokud dáme pufru moc, bude elektrický proud silný až příliš a gel se jím bude zahřívat
        - to může vést k rozkladu agarózy, denaturaci DNA a podobně
        - obecně je lepší provádět ELFO dlouho při malém napětí, než naopak
    - je mnoho druhů pufrů, nejčastěji se používá TAE (pak například TBE, TPE)
}

◊ls[#:t "Nanášecí pufry"]{
    - vzorek se při nanášení do gelu míchá s nanášecím pufrem
    - zvyšují hustotu vzorku, který poté klesá dolů ke startu bloku
    - barvivo usnadňuje nanášecí proces
}

◊ls[#:t "Barviva"]{
    - první druh barviva slouží jen k tomu, abychom viděli, v jaké fázi ELFO je
        - přidáme ho na začátku ELFO
        - BPB, které putuje přibližně jako 300bp dlouhá DNA
        - XC, které putuje jako 4kbp DNA
    - druhý druh se používá k odhalení míst, kam doputovalo DNA
        - přidává se většinou až po ELFO
        - EtBr, který se používá nejčastěji (interkaluje se do helixu)
            - kancerogenní
            - musí se proplachovat, protože se zachycuje i v gelu
        - SYBR Green I
            - dražší, ale nemusí se proplachovat a je mnohem citlivější
            - není kancerogenní
            - dá se přidat rovnou na začátku ELFO
        - barvení stříbrem, hlavně pro polyakrylamidové gely
            - nedá se z DNA dostat
        - DNA může být místo barvení radioaktivně označeno
        - obarvení kovalentně navázanými fluorescenčními sloučeninami
}

◊section{Průběh}

Průběh ELFO záleží na velikosti molekul, které pozorujeme.
◊slide[11 #:s 6]
◊ls{
    # molekula je velice malá (menší než 300bp -- 400bp, což je velikost molekuly agarózy): kategorie Ogstenova síta
        - bude procházet mezi molekulami gelu bez omezení ryhlosti
        - rychlost pohybu není závislá na délce
    # molekula je středně velká: kategorie entropické pasti
        - v této oblasti je závislost pohyblivosti na velikosti molekuly nejsilnější
    # molekula je dlouhá, ale lineární
        - molekula se protáhne a provleče mezi molekulami gelu
        - rychlost pohybu opět není závislá na délce
        - například denaturovaná a rozpletená DNA
}

Na obrázku lze vidět porovnání délky molekuly a rychlosti, s jakou putuje v gelu. Snažíme se vždy, aby u námi pozorovaných molekul i malý rozdíl v déle způsobil velký rozdíl v rychlosti, protože poté i málo rozdílné molekuly půjdou dobře rozeznat. Vlevo na obrázku vidíme výsledek po 1D ELFO, kde nám spývají různé topoizomery. Po 2D ELFO jdou tyto topoizomery dobře rozlišit.
◊img["slides-6/slide-10.jpg"]{Dělení molekul při ELFO}

◊ls[#:t "Faktory ovlivňující průběh"]{
    - napětí
        - při nízkém napětí je mobilita lineární DNA přímo úměrná napětí (což chceme)
        - při zvýšeném napětí nad určitou mez (5V/cm) se mění mobilita fragmentů různě v závislosti na jejich velikosti (což nechceme)
    - směr elektrického pole
        - někdy se používá pulzní ELFO, kde se periodicky mění směr elektrického pole
    - složení bází a teplota
        - nehrají velkou roli (na rozdíl od PAGE)
        - většinou pokojová teplota
    - přítomnost interkalátorů
        - EtBr snižuje mobilitu lineární DNA o 15%
}

◊ls[#:t "Eluce NA z gelu"]{
    - jinými slovy, když už máme vzorky rozděleny, jak je extrahovat
    - zahřátím agarózy
        - většinou se na to používá speciální low melting AG, aby se nám při zahřívání nerozpadlo i DNA
    - elektroelucí
        - kousek gelu vyřízneme a rozemeleme
    - degaradací AG
        - to mí jen málo enzymů, protože agaróza je odolná
}

◊subsection{Rozdělení topoizomerů DNA}

Rychlost putování DNA závisí kromě velikosti molekuly i na jejím tvaru.

◊ls{
    - ocDNA se pohybuje vždy nejpomaleji
    - relativní ryhlost cccDNA a lineární DNA závisí na hustotě gelu a napětí
        - řídký gel + nízké napětí: více se uplaňuje kompaktnost cccDNA
        - hustý gel + vysoké napětí: více se uplatní flexibilita lineární DNA
        - pohyblivost cccDNA navíc závisí na její nadšroubovicové hustotě
}

Může se nám stát, že chceme rozdělit vzorky podle velikosti i podle topologie. Bohužel velká lineární DNA může putovat stejně rychle jako menší coDNA, obě by tudíž skončily na stejném místě a nebyly rozeznatené. Proto se někdy používá ◊strong{2D ELFO}.

◊slide[25 #:s 6]
◊ls[#:t "Průběh 2D ELFO"]{
    # provedeme běžnou ELFO
        - rozdělíme vzorky přibližně podle tepologie
    # přidáme EtBr, čímž rozmotáme supercoily
    # otočíme elektrické pole o 90◊|deg| a opět provedeme ELFO
        - tentokrát se rozmotané supercoily rozdělí podle délky podél nové trajektorie
}

Někdy ani nepoužijeme EtBr a druhou osu ELFO vytvoříme pouze aplikací vyššího napětí. Mobilita při vyšším napětí se liší podle topologie, což nám dovoluje jednotlivé topologie rozlišit. ◊img["slides-6/slide-27.jpg"]{2D ELFO pro sloužící k rozeznání topologie}

Pokud nám naopak na rozdělení podle topologie nezáleží a chceme DNA dělit pouze podle velikosti, můžeme ji denaturovat.

◊ls[#:t "Denaturační gely"]{
    - hlavně polyakrylamidové, používají se při sekvenaci
    - denaturační činidla: močovina, formamid (méně často)
    - aplikujeme vysoké napětí, ELFO se provádí při zvýšené teplotě (50◊|deg|C)
        - DNA se rozpadne na vlákna a zůstává v lineární formě
    - poté můžeme dělit pouze podle velikosti molekul DNA, s vysokým rozlišením
        - rozpoznáme od sebe i molekuly lišící se pouze o jeden nukleotid
}

◊subsection{Pulzní ELFO}

◊slide[28 30 #:s 6]
◊ls{
    - elektrické pole se periodicky mění, molekuly neputují gelem přímo, ale cik-cak
    - používá se pro lepší rozlišení molekul podle délky, hlavně u delších molekul
        - dráha, kterou molekuly ujdou, je mnohem delší, takže i dorbné rozdíly v jejich rychlosti mají větší možnost se projevit
        - molekuly se často musejí ◊em{reorientovat}, a jak rychle a dobře to zvládají závisí na jejich délce
    - jako ◊strong{standardy} se často používají konkatemery známých genomů bakteriofágů o určitých délkách, případně chromozomy S. cerevisae a S. pombe (druhy kvasinek)
}

◊section{Analýza ELFO}

◊meta{Tato sekce nebude u zkoušky, je zmíněna "jen pro naše dobro".}

◊ls[#:t "FIJI"]{
    - slouží k získání dat o tom, kde jsou proužky, jak jsou světlé atd.
    - vyplatí se rozložit obrázek do tří barevných kanálů a studovat jen jeden z nich
    - obdélníkový výběr -> analyze -> plot profile
        - získáme profil světlosti, ze kterého jde zjistit, na jakých pixelech jsou peaky (tedy zvýšené koncentrace DNA)
        - dá se vyexportovat do tabulky
}

◊ls[#:t "FITYK"]{
    - slouží k proložení peaků funkcemi a k přesnému zjištění velikosti a polohy peaků
    - otevřeme vyexportovaný intenzitogram z FIJI
    - ten můžeme proložit fukncí
        - gaussovská křivka automaticky rozpozná peaky
        - z tabulky napravo přečteme, kde se naše peaky nacházejí a jakou mají velikost
}

◊title{Sedimentační metody}

Sedimentace slouží k analýze a případné separaci vzorků na základě jejich velikosti, molekulové hmotnosti, tvaru a hustotě. Funguje na principu odstředivé síly, jejíž velikost je závislá na hmotnosti každého ze vzorků---sedimentace tedy zpravidla probíhá v centrifuze. Teorie centrifugace byla vypracována Svedbergem.

◊ls[#:t "Předpoklady"]{
    - sedimentujeme pouze malé tělísko
    - zanedbáváme tepelný pohyb molekul
    - jediná interakce mezi tělískem a roztokem je tření
    - tyto předpoklady zjednoduší naše uvažování (a rovnice), někdy ale budeme muset přidat korekce, které odstraní vady způsobené těmito předpoklady
}

◊ls[#:t "Rozdělení centrifugace"]{
    - podle účelu
        - analytická (AUC) zjistíme, co máme ve vzorku, v jaké formě a s jakými vazbami
        - preparativní: složí pouze k oddělení složek
    - podle typu
        - izopyknická: odděluje molekuly na základě jejich vznášivé hustoty
        - izokinetická: odděluje molekuly na základě jejich hmotnosti
}

Zkumavku (kyvetu) se snažíme mít z nějakého odolného materiálu. Často se musíme vypořádat s tím, že molekuly u kraje kyvety o kyvetu třou a josu pomalejší.

◊section{Fyzikální princip}

Na vzorek v kyvetě působí tři síly, ◊strong{odstředivá}
◊$${F_o = m \cdot a = m \cdot \omega^2 \cdot r,}
kde ◊${\omega} je úhlová rychlost, ◊${r} vzdálenost od osy otáčení a ◊${m} hmotnost tělíska; dále ◊strong{vztlaková}
◊$${F_{vz} = m_k \cdot \omega^2 \cdot r,}
kde ◊${m_k} je hmotnost kapaliny tělískem vytlačené; a konečně ◊strong{třecí}
◊$${F_t = f \cdot v,}
kde ◊${f} je frikční koeficient tělíska a kapaliny. ◊${f} se dá vypočítat s pomocí Stokesova zákona (pokud je tělísko kulové) nebo s pomocí Einsteinova zákona
◊$${f = \frac{R \cdot T}{N_A \cdot D},}
kde ◊${D} je difúzní koeficient biomakromolekuly. Pkud tedy známe ◊${D}, jsme schopni ◊${f} dopočítat, a ◊${D} se dá naštěstí zjistit experimentálně (závisí na tvaru a objemu molekuly).

Pro přehlednost zavádíme také veličinu ◊strong{relativní odstředivá síla}
◊$${\text{RCF} = \frac{F_o}{m \cdot g},}
která udává, kolikrát je odstředivá síla na ultracentrifuze větší než tíhová síla. Gravitační (tíhovou) sílu můžeme zanedbat, protože RCF síla se pohybuje ve stovkách tisíc.

◊subsection{Sedimentační koeficient}

Pokud ◊${F_o = F_{vz} + F_t}, nastane ◊em{stacionární stav}.

◊align${
    F_o - F_{vz} &= F_t \\
    V \rho r  \omega^2 - V  \rho_k  r  \omega^2 = f \cdot v &= f \cdot \frac{\text{d}v}{\text{d}t} \\
    \frac{V (\rho - \rho_k)}{f} = \frac{1}{r \omega^2} \frac{\text{d}v}{\text{d}t} &= s
}

◊${s} se nazývá ◊strong{sedimentační koeficient} a udává se ve Svedberzích, ◊${[S] = 10^{-13}\text{s}}. Pokud má tělísko 30S, pak urazí 3◊${\mu \text{m}/\text{s}} při sedimentačním zrychlení ◊${10^6 \text{ms}^{-2}}. Sedimentační koeficient dává do souvislosti rychlost sedimentace se zrychlením, kterým na tělísko působila centrifuga.

Pokud k ◊${s} přidáme korekce, získáme ◊strong{sedimentační konstantu}.
◊ls{
    # vhodná korekce na nulovou koncentraci biopolymeru
        - molekuly spolu interagují s čímž normálně nepočítáme
        - počítáme, jak rychle by asi sedimentovala jedna molekula samotná
    # korekce na tlakové rozdíly
        - extrapolace na hladinu, protože blíže ke dnu je velký hydrostatický tlak
}
Její hodnota zálěží na koncentraci biopolymeru, teplotě, a použité kapalině; značí se poté například ◊${S_{0, 20, \text{w}}}.

◊box["Poznámka"]{
    Následující odvození se vyskytuje v prezetacích, ale v přednáškách nebylo moc dobře okomentováno a v cizích zápisech není okomentováno vůbec. Nemyslím tedy, že je moc důležité, ale projistotu ho sem dávám.
    ◊align${
        s &= \frac{1}{r \omega^2} \frac{\text{d}v}{\text{d}t} \\
        \log \frac{r}{r_0} &= s \omega^2 (t - t_0) \\
        s & = \frac{\log \frac{r}{r_0}}{\omega^2 (t - t_0)},
    }
    kde ◊${\log} značí přirozený logaritmus.
}

◊section{Izopyknická a izokinetická ultracentrifugace}

◊ls[#:t "Izopyknická UC"]{
    - dělíme vzorky na základě jejich ◊em{vznášivé hustoty} (neboli: hustoty)
    - ve zkumavce vytvoříme gradient soli, většinou ◊strong{CsCl}, do kterého se v průběhu centrifugace vzorky zařazují podle své vznášivé hustoty
        - na velikosti tolik nezáleží
        - vzorky se zastaví v hladině, kde se jejich hustota vyrovná s hustotou soli o dané koncentraci
        - gradient se tvoří sám průběhem centrifugace, není nutné jej dělat ručně
    - velké molekuly tvoří úzký přesně definovaný proužek, malé molekuly jsou více rozprostřené
}

◊slide[35 #:s 7]
◊ls[#:t "Využití izopyknické UC"]{
    - rozdělení topoizomerů
    - stanovení poměru GC párů
        - GC páry jsou těžší než AT páry
        - dvě komplemntární vlákna mohou mít různou vznášivou hustotu
    - rozpoznání satelitních DNA
        - pokud má jeden vzorek DNA velice odlišná vznášivou hustotu než zbytek, možná pochází z jiného organismu
    - rozdělení dsNA a ssNA
}

◊img["slides-7/slide-34.jpg"]{Koncentrační rozložení CsCl a DNA před izopyknickou UC a po ní}

U izopyknické UC záleží velice na hustotě CsCl, která by většinou být někdy mezi vzorky, aby se mohly lépe oddělit.

◊ls[#:t "Izokinetická UC"]{
    - každý vzorek je pohybuje (svou vlastní) kostantní rychlostí
        ◊$${v = \text{konstanta} \cdot S}
    - běžně vzorky putují tím rychleji, čím dál jsou od osy otáčení, musíme tedy vytvořit speciální "zpomalovací" gradient
        - používá se sacharózový gradient (nutrální, alkalický), 5%--15% nebo 15%--30%
        - gradient musíme vytvořit ručně
}

◊ls[#:t "Využití izokinetické UC"]{
    - rozdělení topoizomerů
    - výpočet ◊${s} a ◊${M}
        - sedimentační konstanty odpovídají tvaru, velikosti a hustotě (např. sedimentační konstanty ribozomů)
    - detekce komplexů
}

◊slide[29 #:s 7]
◊ls[#:t "Tvorba gradientu sacharózy"]{
    - v levé části máme málo koncentrovanou sacharózu, v právé více koncentrovanou
    - když otevřeme kohoutek, nejprve se začne zkumavka plnit koncentrovanější sacharózou, časem se začnou obě konentrace mísit
        - poměr míšení a hodnotu celkového gradientu můžeme ovlivnit šířkou dna první nádoby
    - podobně se tvoří i gradienty u ELFO, když nám nestačí normální gel
}

◊section{Preparativní a analytická ultracentrifugace}

Preparativní ultracentrifugy slouží pouze k oddělení jednotlivých složek vzorku. Jednotlivé centrifugy se liší druhem rotorů, které mají různý tvar a různé naklonění zkumavek ◊slide[6 8 #:s 7 #:inline #t]. Vzorky se z kyvet po separaci odebírají injekční stříkačkou.

Analytické ultracentrifugy (AUC) mají kromě rotoru také zařízení, které v průběhu analýzy měří různé veličiny vzorku (koncentraci a podobně).

◊ls[#:t "Využití AUC"]{
    - pro purifikovaný biopolymer (tzv. ◊em{monodisperzní vzorek})
        - stanovení sedimentačního koeficientu a sedimentační konstanty
        - výpočet molární hmotnosti
    - pro hetergoenní roztok
        - složení, počet složek, analýza reakcí složek
        - odhalení agregátů/komplexů i s jejich velikostí
    - velká přesnost, zjistíme absolutní vlastnosti molekuly, nepotřebujeme standardy (na rozdíl od ELFO)
}

◊ls[#:t "Výhody AUC"]{
    - stačí malé množství vzorku
    - můžeme detekovat i kontaminaci
    - můžeme detekovat interakce mezi látkami
    - nedestruktivní metoda
    - není třeba kalibrace pomocí standardů
}

◊subsection{Průběh AUC}

Když polymer dáme na hladinu a sedimentujeme, v průběhu centrifugace se pohybuje zkumavkou ke dnu takzvané ◊strong{rozhraní}. Pozorujeme koncentrace v celé délce kyvety: na začátku bude koncentrace všude stejná, ale časem se koncenrace zvyšuje směrem ke konci kyvety. Pokud bude látek více, uvidíme několik rozhraní.

Na prvních derivacích koncentračních křivek jde vidět peaky. Nejprve můžeme pozorovat tyto peaky v čase pro jednu látku, pak pro druhou, a pak pro obě dohromady. Pokud v tomto případě vidíme kromě původních dvou peaků i nějaký nový, tvoří naše látky nějaký komplex. U tohoto komplexu můžeme pozorovat difúzní koeficient ("jak jsou peaky rozlité") i sedimentační konstantu.

◊img["sedimentation.jpg"]{Ukázka analýzy sedimentace}

◊ls[#:t "Způsoby analýzy vzorku"]{
    - vzorky jsou v průhledných zkumavkách (na rozdíl od preparativní UC)
    - absorbance
        - většinou u pozorování DNA
        - měříme podle ní hlavně koncetraci v jednotlivých místech kyvety
        - na rozhraní se světlo láme a nedopadá do měřiče, takže koncentraci jsme schopni určit pouze před rozhraním a za ním
        - jsme schopni rozlišit různé AK, i přirozené kofaktory proteinů
        - velice citlivá
    - difrakce (interference)
        - pozorování proteinů, cukrů
        - Abbeho difraktometrie
            - na spodní část hranolu kápneme naši látku, změříme úhel totálního odrazu
            - z toho spočítáme index lomu
        - interferenční měření
            - z interferenčních obrazců na tenké vrstvě můžeme zjistit, jak tlustý je nějaký materiál
            - rayleigh interferometer - světlo prochází dvěma kyvetami (blank + náš vzorek), pozorujeme interferenční obrazce obou
        - ne tolik citlivá
}

Molární hmotnost můžeme vypočítat ze Svedbergovy rovnice
◊$${M = \frac{S R T}{D_0 (1 - \rho_k V)}.}

◊subsection{Praktické využití AUC}

Zajímá nás, jakým způsobem funguje replikace u bakterií.

◊ls{
    # pěstujeme e. coli v atmosféře s těžkým dusíkem
    # po čase ji přesuneme do běžné atmosféry
}

◊slide[41 #:s 7]
Když po každém kroku zjistíme sedimentační koeficienty DNA, zjistíme, že na začátku byl helix těžký, poté vykazoval známky hybridního složení, a časem byl spíše lehký. Z toho (hlavně z druhého měření) je možno odvodit, že je replikace u bakterií semikonzervativní.

◊title{Sekvenace DNA}

Přečtení kódu DNA. Existuje mnoho různých metod, poslední dobou je sekvenace rutinní záležitost, levná a relativně rychlá. Základní postup je ale společný (skoro) všem z nich.

◊ls[#:t "Obecný postup"]{
    # připravíme krátké kousky DNA
    # amplifikujeme pomocí PCR
    # připravíme ssDNA
        - teplota + CsCl
    # sekvenujeme jednotlivé krátké úseky
        - části se musí překrývat, abychom věděli, jak úseky nakonec zase poskládat za sebe
            - například štěpíme stejné sekvence v několika místech
    # uspořádání nasekvenování částí, zjištění překryvu
}

◊definitions{
    ◊term["shotgun sequencing"]{
        Termín, který popisuje postup sekvenace, který byl nastíněn výše: osekvenuje se mnoho krátkých fragmentů DNA s náhodou délkou, které potom počítač přečte (získá ◊em{ready}) a složí dohromady.

        Jakýmsi protikladem tohoto postupu je metoda ◊em{primer walking}, která prochází DNA popořadě, a je tím pádem sice jednodušší, ale také pomalejší.
    }

    ◊term["next generation sequencing"]{
        Někdy také high-throughput sequencing --- umbrella term pokrývající všechny moderní metody sekvenování DNA. Cílem je rychlost (paralelizace), přesnost a nízká cena.
    }
}

Většina sekvenačních postupů se liší už v provedení bodu 1: jak získat z dlouhého DNA kratší fragmenty. Rozlišujeme metody, při kterých už existující DNA štěpíme, a metody, kdy kratší kousky DNA  podle delší DNA sami syntetizujeme.

◊ls[#:t "Hledání ORF"]{
    - open reading frame (ORF) popisuje způsob, jakým čteme trojice nukleotidů při translaci (jsou tři různé ORF, polde toho, kde začneme)
    - zajímá nás, co jsou regulační oblasti a co jsou geny
        - v eukarytotech bývá často gen jen na jenom z vláken a na druhém není nic
    - postup
        # namapujeme stopkodony; tam, kde kde dlouho nejsou, bude pravděpodobně gen (délka 200bp--400bp * 3)
        # podíváme se, jestli v podezřelých oblastech končících na stopkodon začínáme na ATG (vzácně GTG, TTG)
}

◊box["Poznámka"]{
    Jak správně číst sekvence DNA?
    ◊ls{
        - 3' -> 5' je ◊strong{antisense} vlákno, slouží jako templát pro traskripci
        - 5' -> 3' je ◊strong{sense} vlákno, nebo také ◊strong{kódující} -- výsledná mRNA má (až na uracil) stejnou sekvenci jako toto vlákno
        - někdy mohou vznikat i antisesne transkripty, které mají regulační funkci
    }
}

◊section{Metody se štěpením DNA}

Zpravidla jsou to metody starší, které se v dnešní době už tolik nepoužívají.

◊subsection{Původní metody}

Původní metody pracoval hlavně s RNA, protože ta se štěpí snadněji. Využívaly štěpení přírodními látkami, konkrétně
◊ls{
        - fosfodiesterázou hadího jedu (od 3' konce)
        - fosfodiesterázou z hovězí sleziny (od 5' konce)
}

◊ls[#:t "Postup"]{
    # přidáme malé množství účinné látky
    # dojde k částečnému natrávení RNA
        - vzniknou kousky RNA, které jsou všechny různě dlouhé
    # u jednotlivých fragmentů analyticky zjistíme počty jednotlivých bazí koeficienty
        - začínáme u nejkratšího fragmentu, potom druhý nejkratší atd...
        - postupně se dozvídáme, jaký nukleotid je na jaké pozici
        - např: G v dinukleotidu vůbec nebyl, ale v trinukleotidu je => na třetím místě je G
}

V současné době už nepoužíváme hadí jed, ale jsme schopni připravit stejně velké kusy DNA pomocí ◊em{restrikčních endonukleáz}. Existují ale i nové sekvenační postupy, které fragmenty s určitou přesnou délkou nepotřebují.

◊slide[9 #:s 8]
◊box["Restrikční endonukleázy"]{
    ◊ls{
        - homodimery (skládají se ze dvou identických podjednotek)
        - váží DNA na specifických místech, v malém i velkém žlábku
            - R smyčka: velký žlíbek
            - Q smyčka: malý žlábek
        - rozpoznávaná místa jsou dlouhá 4bp--8bp
        - často k funkci potřebují určité kationty
        - štěpení se dá pozorovat i na elektroforéze
        - velice přesné rozpoznání štěpného místa
    }

    Jsou to homodimery, váží se na obě vlákna DNA stejnou částí proteinu; vyžadují proto, aby na DNA byla palindromatická sekvence. Takové palindromatické sekvence však někdy způsobují i problémy (tvoří se kříže, vlásenky...), viz ◊link["#Další konformační anomálie"]{polymorfismus DNA}.

    ◊ls[#:t "Druhy"]{
        - REI: rozštěpí DNA např. o 1kbp dál
        - REII: štěpí komplementární řetězce naproti sobě za vzniku kohezních konců
        - REIII: podobně jako REI
    }

    RE pocházejí z bakterií, které se jimi brání proti bakteriofágům: bakterie mají většinu svého DNA nametylovánu, a když narazí na nenametylovanou DNA, ER ji z DNA vyštípnou.

    Délku vzniklých fragmentů můžeme ovlivnit tím, jak dlohou rozpoznávací sekvenci ER zadáme---čím kratší, tím větší je šance, že se na DNA bude nalézat.
}

◊subsection{Chemické štěpení}

DNA je štěpeně na náhodně dlouhé kusy, někde uprostřed.

◊ls[#:t "Postup"]{
    # radioaktivně označíme DNA na 5' konci, abychom mohly dané DNA později detekovat
        # pomocí alkalické fosfatázy odštěpíme původní P
        # pomocí polynukleotidkinázy navážeme nový, radioaktivně značený fosfát
    # takto označenou sekvenci pošleme na několik štěpení
}

◊slide[19 20 #:s 8]
◊ls[#:t "Štěpení před G"]{
    # přidáme dimethylsulfát, který se naváže na N7 na G
    # N7 na G nemůže být čtyřvazný, přeruší vazbu na ribózu
    # na ribóze je nyní volná OH skupina, na kterou se naváže piperidin
    # ribóza je destabilizována, přeruší vazbu s oběma fosfáty
    # DNA vlákno se rozpadá
}

Na podobném principu funguje štěpení před G + A. Samozeřjmě takové štěpení nám přinese více fragmentů než štěpení pouze před G.

◊slide[22 23 #:s 8]
◊ls[#:t "Štěpení před C + T"]{
    - podobný průběh jako štěpení před G, jen za dimethylsulfát vyměníme hydrazin, který se váže na aminovou skupina
    - zbytek reakce je stejný
}

◊slide[26 #:s 8]
Pozorujeme pouze strandy, které začínají na označeném 5' konci.
◊ls{
    - rozdělíme produkty štěpení podle hmotnosti na PA gelu (70◊|deg|)
        - jen pár pásků bude radioaktivně označených
    - jsme omezeni počtem asi 100 fragmentů, a navíc samozřejmě nejsme schopni nasekvenovat označený 5' nukleotid
}

◊section{Metody se syntézou DNA}

◊box["PCR (polymerase chain reaction)"]{
    Řetězová reakce, která slouží k amplifikaci (duplikaci) určité části DNA.

    ◊ls[#:t "Postup"]{
        # denaturace DNA na dvě vlákna
        # vytvoření dvou primerů, které jsou komplementární k začátku a konci úseku, který chceme zkoumat
        # přidání DNA polymerázy
        # DNA polymeráza nasedne na primer a syntetizuje DNA směrem od něj
        # vzniknou dvě vlákna začínající primerem
        # pokud opět navážeme primery a přidáme DNA polymerázu, získáme sekvenci DNA omezenou z obou částí primery
            - jejich počet roste exponenciálně
    }

    Abychom mohli PCR provést, musíme znát alespoň kousek sekvence před a po námi zkoumané části, abychom mohli vytvořit odpovídající primery. Někdy se primery tvoří jen přibližně a nejsou 100% komplementární.
}

◊subsection{Metoda terminace (Sanger)}

Na rozdíl od sekvenačních metod štěpících nějaké stávající DNA na menší fragmenty funguej tento postup trochu obráceně; pomocí DNA polymerázy vytváří komplementární vlákno k sekvenovanému vláknu, a v průběhu této in vintro syntetizace dochází k samotné sekvenaci. Je to metoda vhodná hlavně pro malé vzorky.

◊slide[30 #:s 8]
◊ls[#:t "Postup"]{
    - potřebujeme ssDNA, DNA primer, DNA polymeráza, dNTP (běžný deoxy trinukleotid), dideoxyNTP (trinukleotid, který na ribóze nemá žádnou OH skupinu)
    - podle ssDNA tvoříme komplementární vlákno, někdy se ale stane, že se naváže ddNTP místo dNTP
        - po ddNTP se již nic navázat nemůže, polymerace DNA končí
    - časem vznikne mnoho různě dlouhých úseků zakončených ddNTP
}

◊slide[34 35 #:s 8]
ddNTP máme čtyři druhy, a ty jsou buďto fyzicky oddělené v nádobách, nebo fluorescečně označené v jedné nádobě. Skončíme tedy se čtyřmi skupinami fragmentů DNA, které jsou všechny ukončeny určitou ddNTP a my víme, kterou (buďto podle nádoby, nebo podle barvy). Stačí nám zjistit, jak dlouhá jednotlivá vlákna jsou a můžeme z nich složit celou sekvenci.

Délku jednotlivých fragmentů zjistíme pomocí ELFO --- běžně se nedělá gelová ELFO, ale kapilární ELFO doplněná chromatografií. Semtam kromě terminátoru (ddNTP) značíme i primer nebo běžné dNTP, abychom poznali, která DNA je naše nově polymerovaná a která je ta původní templátová.

◊subsection{Pyrosekvenování}

Při syntéze DNA (konkrétně při připojení každého dNTP) se uvolňuje proton a pyrofosfát (PPi). Právě detekce uvolněného PPi se používá v rámci pyrosekvenování.

◊slide[47 #:s 8]
◊ls[#:t "Postup"]{
    # k DNA, kterou chceme nasekvenovat, přidáme komplementární primer
    # přidáme nějaký konkrétní nukleotid (musíme vědět, který)
    # sledujeme, co se stane
        - pokud je nukleotid zařazen do naší rostoucí DNA, uvolní se PPi a proton, uvolněný PPi detekujeme
                ◊$${
                    \ce{DNA_n + {dNTP} ->[DNA polymeraza] DNA_{n + 1} + PPi} \\
                    \ce{PPi + adenosin 5 fosfosulfat ->[sulfurylaza] ATP + SO4^{-2}} \\
                    \ce{ATP + luciferin + O2 ->[luciferaza] AMP + PPi + CO2 + foton}
                }
        - nakonec tedy pozorujeme záblesk; jak lze vidět z poslední rovnice, kromě fotonu se uvolní další PPi, čili reakce proběhne několikrát po sobě a uvolní se více než jeden foton
        - pokud je v sekvenci více stejných dNTP za sebou, sledujeme větší intenzitu světla
}

Nevýhodou této metody je, že při vyšším (8+) počtu stejných dNTP za sebou už se nám špatně detekuje jejich přesný počet. Luciferáza by mohla rozpoznat a zpracovat i běžné dATP (což nechceme), proto se použí dATP◊${\alpha}S, který má na P◊${\alpha} síru.

◊subsubsection{Odhalování metylace}

Bakterie mají často své DNA nametylováno, což jim pomáhá rozpoznat virovou DNA. U savců není metylováno veškeré DNA (metylace má i regulační funkci), ale je nametylována většina (70%) CpG párů --- tj. ◊code{[5'] cytosin - fosfát - guanin [3']} za sebou na jednom vlákně.

◊ls[#:t "Vlastnosti CpG"]{
    - metylován je cytosin
    - kdyby byla DNA čistě náhodná, CpG by v ní mělo tvořit kolem 6%, reálně jich tam je pouze 1%
    - CpG jsou často v regulačních promotorových oblastech
        - mají vliv na buněčné dělení => často figurují u rakoviny
    - nemetyolvané CpG je rozpoznáno TLR (tall like receptors), které detekují infekce
}

Proč je CpG méně, než bychom čekali? Mohlo by to být z toho důvodu, že methylcytosin se při deaminaci (což je proces, který u DNA může probíhat) mění na thymin, zatímco běžný cytosin se mění na uracil. uracil je totiž v DNA jednoduše detekován a rychle opraven, zatímco thymin vlastně změní informaci, kterou DNA v daném místě nese. (Metylované) CpG je tedy svým způsobem nebezpečné.

◊ls[#:t "Role pyrosekvenování v detekci CpG"]{
    - pokud se na jednom vlákně nachází CpG, na druhém se (také v 5' -> 3' směru) nachází také CpG, kvůli komplementarity
        - pomocí pyrosekvenování můžeme zjistit, že jeden CpG je methylován a druhý ne
    - u celé DNA můžeme provést reakci ◊chem{C -> U}, zatímco C-metylovaný zůstane stejný
        - zjistíme množství a polohu všech U před a po této reakci
}

◊subsubsection{Pyrosekvenování 454}

Prinvipielně stejné jako běžné pyrosekvenování, liší se jen postupem.

◊ls[#:t "Postup"]{
    # štěpení DNA na relativně krátké úseky (500bp)
    # konce DNA jsou ligovány na primer a na biotin - tyto fragmenty se vychytávají na kuličky
    # na jedné kuličce v roztoku probíhá PCR amplifikace
        - z PCR můžeme získat ssDNA, která pochází z jedné molekuly
    # kuličky se opláchnou a převedou do olejové emulze
        - mají kolem sebe všechny potřebné proteiny, ale jsou separovány od ostatních kuliček s DNA
    # kuličky se dají do mikroreaktorů (prohlubně v desce), kde probíhá běžné pyrosekvenování
        - navrch se přisypou kuličky s enzymovými komplexy nutnými pro pyrosekvenování
        - celé reaktory se proplachují všemi čtyřmi dNTP
        - měří se luminiscence
}

Jediný hlavní rozdíl oproti pyrosekvenování je v tom, že P454 probíhá paralelně na mnoha fragmentech DNA najednou, je tedy rychlejší.

◊ls[#:t "Využití"]{
    - sekvenace celých genomů
    - sekvenace celých bakteriálních společenství
    - detekce mutací ve směsi alel
    - single nucleotide polymophism (SNP)
    - sekvenace transkriptomu
    - objev nový genů
}

◊subsection{Sekvenace nanopóry}

Nová metoda, stále se vylepšuje. Je rychlá, ale má vysokou chybovost (10%) --- hodí se k doplnění ostatních metod.

◊slide[63 #:s 8]
◊ls[#:t "Postup"]{
    # máme dvě komůrky oddělené přepážkou, ve které je díra zakrytá fosfolipidovou dvojvrstvou
    # v této membráně vytvoříme pór, například bakteriálním toxinem, který umožní molekulům přecházet z jedné strany membrány na druhou
    # do každé komůrky vložíme jenu elektrodu
    # záporně nabité DNA putuje ke kladnému pólu přes pór v membráně
    # vlákno DNA pór ucpává a my jsme tím páde mschopni měřit výkyvy proudo, protože přes ucpaný pór nemohou procházet ionty
        - z výkyvů jsme schopni přečíst čtyři po sobě jdoucí nukleotidy
        - pomocí nanopórů lze provádět i "hmotností spektrometrii" roztoku
}

V případě nutnosti můžeme DNA u "vchodu" do póru zpomalit nějakým proteinem, který váže DNA. Také je možné nechat projít pórem hned po prvním strandu i druhý strand, což nám dovoluje zkontrolovat chyby.

◊subsection{Další metody}

◊ls[#:t "Illumina - Solexa"]{
    - fixování ssDNA a primeru na sklíčko
    - PCR, z fixované DNA vznikne ◊em{DNA kolonie}
    - řetězec terminujeme fluorescenčním analogem dNTP (jako u Sangerovy metody)
    - terminátory rozpoznáváme kamerou
    - dNTP sonda lze po oskenování odštěpit, navázán zůstane jen obyčejný dNTP -> můžeme dál pokračovat v syntéze
}

◊ls[#:t "Ion semiconductor sequencing"]{
    - při inkorporaci se uvolňuje kromě PPi i proton
    - DNA leží přímo na křemíkovém čipu, který je citlivý na protony (tj. citlivý na malé změny pH)
    - levná detekce, bez optických prvků
    - možno sekvenovat jen krátké fragmenty
}

◊title{Nezařazené poznámky}
- hyperchronní efekt - ssDNA absorbuje více než dsDNA
[MOODLE] SSB někdy váže DNA přes stacking interakce na Tyr nebo Trp
