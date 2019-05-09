\documentclass[DIV=8]{scrreprt}
\usepackage[czech]{babel}

\usepackage{amsmath}
\usepackage[version=4]{mhchem}
\usepackage{listings}
\usepackage{hyperref}
\newcommand{\inlinecode}{\texttt}
\graphicspath{{./resources/images/}}

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
◊(apply string-append (cdr doc))
\end{document}