◊(local-require racket/file racket/system)
◊(define latex-source ◊string-append{
    \documentclass[DIV=9]{scrreprt}
    \usepackage[czech]{babel}
    \addto\captionsczech{\renewcommand{\chaptername}{}}

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
    \usepackage{ebgaramond-maths}
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
    \title{◊(select-from-metas 'title (current-metas))}
    \author{Evžen Wybitul \and Kateřina Krausová}

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