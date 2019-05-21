◊(local-require racket/file racket/system racket/string)
◊(define latex-source ◊string-append{
    \documentclass[DIV=9]{scrreprt}
    \usepackage[czech]{babel}
    \addto\captionsczech{\renewcommand{\chaptername}{}}

    \usepackage{placeins} % Don't move figures beyond sections

    \usepackage{amsmath}
    \usepackage[version=4]{mhchem}
    \usepackage{listings}
    \usepackage{hyperref}
    \newcommand{\inlinecode}{\texttt}
    \graphicspath{{./resources/images/}}

    % Header
    \usepackage{fancyhdr}
    \pagestyle{fancy}

    %% Setup the fonts
    \usepackage{tgpagella}
    \addtokomafont{labelinglabel}{\small\sffamily}

    %% Setup the page layout
    \usepackage{microtype} % micro adjustments to fonts
    \usepackage{setspace} % set the line spacing
    \onehalfspacing % the right 1.5 spacing between lines
    \frenchspacing % no double space after full stop
    \KOMAoptions{parskip=half} % no indentation of first lines, USA style
    \recalctypearea

    \usepackage{tikz}
    \newcommand{\mybox}[2]{
        \paragraph{#1} #2
    }
    \lstset{
        basicstyle=\ttfamily,
        columns=fixed
    }

    \usepackage{etoolbox}
    \makeatletter
    \patchcmd{\scr@startchapter}{\if@openright\cleardoublepage\else\clearpage\fi}{}{}{}
    \makeatother

    \usepackage{enumitem}
    \setlistdepth{5}

    \newlist{myEnumerate}{enumerate}{5}
    \setlist[myEnumerate,1]{label=(\arabic*)}
    \setlist[myEnumerate,2]{label=(\Roman*)}
    \setlist[myEnumerate,3]{label=(\Alph*)}
    \setlist[myEnumerate,4]{label=(\roman*)}
    \setlist[myEnumerate,5]{label=(\alph*)}

    \newlist{myItemize}{itemize}{5}
    \setlist[myItemize,1]{label=\textbullet}
    \setlist[myItemize,2]{label=--}
    \setlist[myItemize,3]{label=*}
    \setlist[myItemize,4]{label=$\circ$}
    \setlist[myItemize,5]{label=$\circ$}

    \title{◊(select-from-metas 'title (current-metas))}
    \author{◊(string-join (select-from-metas 'authors (current-metas)) " \\and ")}

    \begin{document}
    \begin{titlepage}
    \maketitle
    \end{titlepage}
    \tableofcontents
    ◊(apply string-append doc)
    \end{document}})
◊(define working-directory
    (make-temporary-file "pollen-latex-work-~a" 'directory))
◊(define temp-tex-path (build-path working-directory "temp.tex"))
◊(display-to-file latex-source temp-tex-path #:exists 'replace)
◊(define command (format "xelatex -output-directory=~a ~a"
  working-directory temp-tex-path))
◊(unless (system command) (error "pdflatex: rendering error"))
◊(unless (system command) (error "pdflatex: rendering error"))
◊(let ([pdf (file->bytes (build-path working-directory "temp.pdf"))])
   (delete-directory/files working-directory)
   pdf)