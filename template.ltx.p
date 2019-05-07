\documentclass[BCOR=0pt]{scrreprt}

%% Write cleaner and modern LaTeX
\usepackage[l2tabu]{nag}

%% Setup the page layout
\usepackage{microtype} % micro adjustments to fonts
\usepackage{setspace} % set the line spacing
\onehalfspacing % the right 1.5 spacing between lines
\frenchspacing % no double space after full stop
\KOMAoptions{parskip=half} % no indentation of first lines, USA style
\recalctypearea

\usepackage{dirtytalk}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[czech]{babel}

\usepackage{graphicx}
\graphicspath{{./resources/images/}}

\usepackage{amsmath}
\usepackage[version=4]{mhchem}

\usepackage{setspace}
\usepackage{geometry}
\usepackage{hyperref}
\usepackage{listings}
\usepackage{marginnote}

\lstset{
  basicstyle=\ttfamily,
  columns=fixed
}

\newcommand{\inlinecode}{\texttt}

\usepackage{tikz}
\newcommand{\mybox}[4]{
    \begin{figure}[h]
        \centering
    \begin{tikzpicture}
        \node[anchor=text,text width=\columnwidth-1.2cm, draw, rounded corners, line width=1pt, fill=#3, inner sep=5mm] (big) {\\#4};
        \node[draw, rounded corners, line width=.5pt, fill=#2, anchor=west, xshift=5mm] (small) at (big.north west) {#1};
    \end{tikzpicture}
    \end{figure}
}

\begin{document}

◊doc

\end{document}