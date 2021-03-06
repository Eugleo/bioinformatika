#lang pollen

◊define-meta[header]{tasks}
◊define-meta[title]{Úkoly}

◊title{Bonusové úkoly z bioinformatiky}

Zde budou vypracované oba bonusové úkoly.

◊section{Úkol #1}

Vypracovaný podle ◊link["http://xray.bmc.uu.se/nisse/inlupp_DB_vt09/index.html"]{této stránky}.

◊questions[1]{
    ◊question{What protein does the sequence come from?}
    ◊answer{Z lidské Tyrosin-protein kinázy BTK}

    ◊question{How many amino acid residues does the full-length protein contain?}
    ◊answer{659}

    ◊question{What kind of enzyme and what do they 'do'?}
    ◊answer{Kináza; kinázy jsou enzymy katalyzující fosforylaci, což je proces, při kterém je na substrát přenášen fosfát z ATP (nebo jiné podobné molekuly)}

    ◊question{What is the common substrate of such enzymes?}
    ◊answer{Často jiné proteiny (je-li myšleno toto; pokud je otázka cílená spíše na donory fosfátové skupiny, těmi jsou většinou molekuly ATP).}

    ◊question{Which residues in the protein are involved in substrate binding?}
    ◊answer{Jediná AK v aktivím místě je Asp. Inositol-(1,3,4,5)-tetrakisphosphate reaguje s Lys, Arg a Tyr.}

    ◊question{How many and what are they called? [Domains]}
    ◊answer{Pět domén: PH, zinkový prst, SH3, SH2 a protein kinázová doména.}

    ◊question{How many structure models of this protein can you find in the structure database, i.e. the PDB (give also the names of the pdb entries)?}
    ◊answer{Je jich celkem 69, čili vypisovat je nebudu.}

    ◊question{What/which experimental methods have been used?}
    ◊answer{Krystalografie a NMR.}

    ◊question{What are these structural models representing? (Hint: this question is connected to questions 5 and 6).}
    ◊answer{Většinou jsou to modely významných částí proteinu. Zobrazují jeho (domnělou) 3D strukturu.}

    ◊question{How many members does this "Family" of domains have in the SCOP classification?}
    ◊answer{V protein kinázové doméně.}

    ◊question{How many members does this "Family" of domains have in the SCOP classification?}
    ◊answer{Rodina "Protein kinases, catalytic subunit" má 63 různých domén.}

    ◊question{What is the disease called?}
    ◊answer{X-linked agammaglobulinemia (XLA).}

    ◊question{In the above case, what is the molecular cause of the disease?}
    ◊answer{Téhle otázce bohužel moc nerozumím. Zdravá a nezdravá sekvence se liší na mnoha místech, pinpointovat nějaké konkrétní, které by za nemoc mohlo, se mi nepodařilo. Když se podívám, jak by vypadala translace, z obou sekvencí vylezou zcela odlišné proteiny. Předpokládám ale, že správná odpověď bude ještě o něco komplikovanější.}

    ◊question{How can such a mutation, R->Q, look like on the genetic level?}
    ◊answer{Napadá mě například nějaká chyba při translaci; kodon R je ◊code{C-G-[ACGT]}, zatímco kodon Q je ◊code{C-A-[AG]}. Protože A i G jsou oba puriny, myslím, že nějaká chyba typu ◊code{CGA} -> ◊code{CAA} je možná.}

    ◊question{What is the functional effect of the R524->Q substitution? (An answer in general terms is OK but a detailed answer can be found in some databases).}
    ◊answer{Taková substituce nějakým způsobem poškodí schopnost vázat ATP.}
}

◊section{Úkol #2}

Vypracovaný podle ◊link["https://web.natur.cuni.cz/~marian/pract4.html"]{této stránky}.

◊questions[2]{
    ◊question{How would you qualify the protein based on the secondary structure content? All-alpha? All-beta? or mixed alpha-beta?}
    ◊answer{Protein je alfa-beta.}

    ◊question{Can you guess how many domains does the structure contain? Are they most probably identical or different?}
    ◊answer{Podle obrázku nejspíše dvě stejné domény (pokud ty samotné neberu jako rozdělené na více domén).}

    ◊question{What does Ramachandran plot show? What are Psi and Phi?}
    ◊answer{Ukazuje úhly na ◊chem{C\alpha} (peptidové vazby jsou planární). ◊${\psi} a ◊${phi} jsou názvy těch úhlů, konkrétně rotace kolem ◊chem{C-C} a ◊chem{C-N}, respektive.}

    ◊question{How many residues are outside three major allowed regions? What do the squares in the plot mean?}
    ◊answer{Tři. Každý malý modrý čtverec značí naměřenou hodnotu ◊${\psi} a ◊${\phi} na jednom z ◊chem{C\alpha}.}

    ◊question{Judging from Ramachandran plot of our mysterious structure, does PrX look like a protein? Is it worth to further analyse it?}
    ◊answer{Ano, přes 96% AK leží podle Ramachandranova diagramu na správném místě.}

    ◊question{When was the DALI webpage last updated?}
    ◊answer{Na ◊link["http://ekhidna2.biocenter.helsinki.fi/dali/index.html#tabs-1"]{linknuté stránce} jsem tuto informaci nenašel.}

    ◊question{When was the DALI Lite database last updated? What database is used by DALI?}
    ◊answer{DALILite je discontinued, DALI používá celou PDB databázi.}

    ◊question{Do you think DALI database is updated often enough?}
    ◊answer{Zcela určitě.}

    ◊question{When was the SSM webpage last updated? Who is the primary developer of the server?}
    ◊answer{Pokud je namysli Fold, na který stránka odkazuje, byl naposledy updatován 8. 4. 2014. Hlavním správcem je EBI.}

    ◊question{Which paper would give you more information about the SSM server?}
    ◊answer{Nejspíše  E. Krissinel and K. Henrick (2004). Secondary-structure matching (SSM).}

    ◊question{How many different proteins are among the hits?}
    ◊answer{24 hitů, z toho 2 a 2 byly na jednom proteinu --- celkem tedy 22 různých proteinů.}

    ◊question{What score is decisive for ordering the hits? What does it mean? Find the explanation for each column in the list.}
    ◊answer{Q-score, které reprezentuje kvalitu alignmentu ◊chem{C\alpha}. Kombinuje délku alignmentu (tj. počet matchnutých zbytků) a RMSD (tj. root mean square distance jednotlivých ◊chem{C\alpha}).}

    ◊question{What is the sequence identity between 1PO6 and the query?}
    ◊answer{65%.}

    ◊question{What is the SSE identity between 1PO6 and the query?}
    ◊answer{88% (konkrétně, 88% SS z PrX bylo indetifikováno v 1PO6, a 100% SS z 1PO6 bylo nalezeno v PrX).}

    ◊question{How many hits with the DALI server? More or less than with SSM?}
    ◊answer{Více, DALI našel 962 hitů.}

    ◊question{How could you explain the different number of hits between the SSM and the DALI? What other factors could have played role?}
    ◊answer{Pokud DALI nějakým způsobem zmenšuje vstupní databázi, může si nejspíše dovolit být trochu méně přísný co se vlastností hitů týče.}

    ◊question{What is the most probable function of our mysterious protein?}
    ◊answer{Jedná se nejspíše o nějaký heteroenní nukleární ribonukleoprotein, což je protein formující komplexy s RNA. Takové proteiny většinou figurují v procesech zahrnujících replikaci DNA, regulaci genové exprese apod.}

    ◊question{Was Arg 97 built into the structure in a wrong way or are there objective reasons that make building of this residue difficult?}
    ◊answer{Nemám tušení, Astex EDS viewer mi nefunguje v žádném z mých prohlížečů (Safari, Chrome, Firefox) a starý viewer vyžaduje starou verzi Javy, kterou mi prohlížeče odmítají spustit.}

    ◊question{Which domain does occur in hnRNP core protein A1?}
    ◊answer{Na 1PO6 se vyskytují dvě domény, RRM_1 a hnRNPA1. }

    ◊question{Does this domain interact with any other? Which?}
    ◊answer{Pokud máte namysli hnRNPA1, ne. Pokud RRM_1, tak ano, a těch interakcí je 19. Jedna z nich je ale vskutku mago_nashi.}

    ◊question{How many structures are known to contain a Mago nashi domain?}
    ◊answer{Samotnou mago_nashi doménu má 1119 struktur.}

    ◊question{What is the function of hnRNP core protein A1 according to the Uniprot?}
    ◊answer{Uniprot říká doslova: ◊em{Involved in the packaging of pre-mRNA into hnRNP particles, transport of poly(A) mRNA from the nucleus to the cytoplasm and may modulate splice site selection. May bind to specific miRNA hairpins. May play a role in HCV RNA replication.}}

    ◊question{How many residues are within hydrogen bonding distance? What amino acid types (hydrofobic, positively charged..) mediate the interaction?}
    ◊answer{Podle PyMolu pouze tři AK: Gly (malá, nepolární -> hydrofobní), Phe (hydrofobní), Arg (kladně nabitý). Když se ale neomezím na 3,5◊angs, vidím H-můstků mnohem více.}

    ◊question{Is it side chain or main chain that is responsible for the interaction between the amino acids and RNA?}
    ◊answer{Zdá se, že většinou interaguje s RNA boční řetězec. ◊img["ukol.png"]{Screenshot z PyMolu zobrazující interakci proeinu a RNA}}

    ◊question{Which part of the nucleotide does mostly take part in the interaction?}
    ◊answer{Většinou samozřejmě báze, i když se zdá, že někdy reaguje i ribóza.}

    ◊question{Could there be also other types of interactions taking place?}
    ◊answer{Ano, na určitých místech to vypadá, jako by docházelo ke stacking interakcím mezi bázemi nukelotidů a aromatickými AK.}

    ◊question{Would you bet that our protein X could bind nucleic acid (please, motivate your answer)?}
    ◊answer{Ano, dle Clustalu ◊${\Omega} existuje jedna velká konzervovaná část, která je PrX i 1PO6 společná. Protože se jedná přibližně o celou první polovinu 1PO6, a dle PyMolu usuzuji, že právě tam se nachází AK interagující s RNA, dá se odhadnout, že by toho byl schopen i náš PrX.}
}