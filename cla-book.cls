\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{cla-book}[2019/11/21 Note's book]

\LoadClass[openany]{book}
\bibliographystyle{IEEEtranTIE}

% Index
\RequirePackage{makeidx}
\setcounter{secnumdepth}{0}

% Mathematics
\RequirePackage{amsmath}
\RequirePackage{dsfont} % used to represent \mathds{R}
\RequirePackage{mathrsfs} % used to represent \mathscr{S}
\RequirePackage{amssymb} % used to represent \nvDash

% Table
\RequirePackage{array}
\setlength{\arrayrulewidth}{0.3mm} % border
\setlength{\tabcolsep}{8pt} % margin to border
\renewcommand{\arraystretch}{2}
\newcommand*{\thead}[1]{\multicolumn{1}{c}{\bfseries #1}}

% Pager head
\pagestyle{empty}
\RequirePackage{geometry}
% left=2cm,right=2cm, bottom=1cm
\geometry{a4paper,top=1.5cm}

% Packages for drawing
\RequirePackage{pgf}
\RequirePackage{tikz}
\usetikzlibrary{chains, automata, positioning, arrows, arrows, backgrounds, calc, matrix}

% Packages for picture
\RequirePackage{graphics}
\RequirePackage{subfig}
\RequirePackage{float}

% \begin{figure}[ht]
%   \subfloat[Standard FBs\label{fig:std-safety}]{
%     \includegraphics[width=1.0\linewidth]{imgs/cyc_model_safety_tradi.eps}} \\
%   \subfloat[MC-related FBs\label{fig:mc-safety}]{
%     \includegraphics[width=1.0\linewidth]{imgs/cyc_model_safety_motion.eps}}
%   \centering
%   \caption{Execution model of standard FBs and MC-related FBs with safety constraints}
% \end{figure

% Packages for codes
\RequirePackage{listings}
\RequirePackage{enumitem}

% Definition, Theorem, Lemma
\RequirePackage{mdframed}
\newmdtheoremenv{cla_def}{Definition}
\newmdtheoremenv{cla_thm}{Theorem}
\newmdtheoremenv{cla_lemma}{Lemma}
\newmdtheoremenv{cla_example}{Example}
\newmdtheoremenv{cla_note}{Note}

\newcommand{\clanewdef}[3]{
  \begin{cla_def}
    (\textbf{#1}).

    #3
    \label{#2}
  \end{cla_def}
}

\newcommand{\clanewlemma}[3]{
  \begin{cla_lemma}
    (\textbf{#1}).

    #3
    \label{#2}
  \end{cla_lemma}
}

\newcommand{\clanewthm}[3]{
  \begin{cla_thm}
    (\textbf{#1}).

    #3
    \label{#2}
  \end{cla_thm}
}

\newcommand{\clanewexample}[3]{
  \begin{cla_example}
    (\textbf{#1}).

    #3
    \label{#2}
  \end{cla_example}
}

\newcommand{\clanewnote}[3]{
  \begin{cla_note}
    (\textbf{#1}).

    #3
    \label{#2}
  \end{cla_note}
}




% Code
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{xcolor}
% \RequirePackage[dvipsnames]{xcolor}
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{common} {
  backgroundcolor=\color{backcolour},   
  commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,         
  breaklines=true,                 
  captionpos=b,                    
  keepspaces=true,                 
  numbers=left,                    
  numbersep=5pt,                  
  showspaces=false,                
  showstringspaces=false,
  showtabs=false,                  
  tabsize=2
}

\lstdefinelanguage{ocaml} {
  style=common
}

\lstdefinelanguage{coq} {
  morekeywords={
    Inductive, Type, Definition, match, with, end, Compute,
    Example, Theorem, Lemma, Fact,
    Proof, Qed
    },
  sensitive=true,
  morecomment=[s]{(*}{*)}, 
  morestring=[b]",
  style=common
}

\newcommand{\clalistcode}[2] {
  \lstinputlisting[language=#1]{#2}
}

% Font color

\newcommand{\ctextbf}[1]{ % textbf red
  {\color{red}#1}
}

\newcommand{\ctextit}[1]{ % textbf red
  \colorbox{blue!30}{#1}
}

\newcommand{\crule}{
  \color{black!80} \rule{.9\linewidth}{0.5mm} 
}