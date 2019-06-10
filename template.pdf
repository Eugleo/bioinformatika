◊(local-require racket/file racket/system racket/string)
◊(define latex-source ◊string-append{
    \documentclass[DIV=9]{scrreprt}
    \usepackage[czech]{babel}
    \addto\captionsczech{\renewcommand{\chaptername}{}}
    \usepackage{geometry}

    \usepackage{placeins} % Don't move figures beyond sections
    \usepackage{siunitx}
    \usepackage{amsmath}
    \usepackage[version=4]{mhchem}
    \usepackage{listings}
    \usepackage{hyperref}
    \newcommand{\inlinecode}{\texttt}
    \usepackage{graphicx}
    \graphicspath{{./resources/images/}}

    \usepackage[explicit]{titlesec}

    % Set up chapter title
    \titleformat{\chapter}[frame]
    {\normalfont}
    {\filright
     \footnotesize
     \enspace ČÁST \thechapter\enspace}
    {2pt}
    {\filcenter\huge\sffamily \uppercase{#1}}
    \titlespacing{\chapter}{0pt}{2em}{1em}

    % List headers
    \titleformat{\paragraph}{\scshape\normalsize}{\theparagraph}{}{#1}
    \titlespacing{\paragraph}{0pt}{0pt}{-10pt}

    % Header
    \usepackage{fancyhdr}
    \pagestyle{fancy}

    %% Set up the fonts
    \usepackage{fourier}
    \usepackage{baskervald}
    \addtokomafont{descriptionlabel}{\sffamily\mdseries}
    \usepackage{FiraSans}

    %% Set up the page layout
    \usepackage{microtype} % micro adjustments to fonts
    \usepackage{setspace} % set the line spacing
    \onehalfspacing % the right 1.5 spacing between lines
    \frenchspacing % no double space after full stop
    \KOMAoptions{parskip=half} % no indentation of first lines, USA style
    \recalctypearea

    \usepackage{xcolor}
    \definecolor{amber}{rgb}{1.0, 0.75, 0.0}
    \definecolor{mediumelectricblue}{rgb}{0.01, 0.31, 0.59}
    \definecolor{mediumjunglegreen}{rgb}{0.11, 0.21, 0.18}
    \usepackage{mdframed}

    \newmdenv[
        topline=false,
        bottomline=false,
        rightline=false,
        skipabove=\topsep,
        skipbelow=\topsep,
        linecolor=mediumelectricblue
    ]{metapar}

    \newmdenv[
        topline=false,
        bottomline=false,
        rightline=false,
        skipabove=\topsep,
        skipbelow=\topsep,
        linecolor=amber
    ]{todopar}

    \newmdenv[
        topline=false,
        bottomline=false,
        rightline=false,
        skipabove=\topsep,
        skipbelow=\topsep,
        linecolor=mediumjunglegreen
    ]{boxpar}

\usepackage[some]{background}

    \newcommand{\meta}[1]{
        \begin{metapar}
        {\scshape\color{mediumelectricblue} META} \quad #1
        \end{metapar}
    }
    \newcommand{\todo}[1]{
        \begin{todopar}
        {\scshape\color{amber} TODO} \quad #1
        \end{todopar}
    }
    \newcommand{\mybox}[2]{
        \begin{boxpar}
        {\scshape\color{mediumjunglegreen} [#1]} \quad #2
        \end{boxpar}
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

    \author{◊(string-join (select-from-metas 'authors (current-metas)) " \\\\\n")}

    \definecolor{titlepagecolor}{HTML}{◊(select-from-metas 'color (current-metas))}

    \backgroundsetup{
    scale=1,
    angle=0,
    opacity=1,
    contents={\begin{tikzpicture}[remember picture,overlay]
    \path [fill=titlepagecolor] (-0.5\paperwidth,5) rectangle (0.5\paperwidth,10);
    \end{tikzpicture}}
    }

    \makeatletter
    \def\printauthor{%
        {\large \@author}}
    \makeatother

    \newcommand{\bigsf}{\fontsize{45pt}{65pt}\selectfont\sffamily\bfseries}

    \begin{document}
    \begin{titlepage}
    \BgThispage
    \newgeometry{left=1cm,right=4cm}
    \vspace*{2cm}
    \noindent
    \textcolor{white}{\bigsf ◊(select-from-metas 'title (current-metas))}
    \vspace*{2.5cm}\par
    \noindent
    \begin{minipage}{0.35\linewidth}
        \begin{flushright}
            \printauthor
        \end{flushright}
    \end{minipage} \hspace{15pt}
    %
    \begin{minipage}{0.02\linewidth}
        \rule{1pt}{175pt}
    \end{minipage} \hspace{-10pt}
    %
    \begin{minipage}{0.6\linewidth}
    \vspace{5pt}
    \hspace{10pt}
        Verze ◊(select-from-metas 'version-number (current-metas))

    \hspace{10pt}
        Poslední update ◊(select-from-metas 'date (current-metas)) (◊(select-from-metas 'version-name (current-metas))).

    \hspace{10pt}
        Sláva bioinformatikům!
    \end{minipage}
    %
    \end{titlepage}
    \restoregeometry

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