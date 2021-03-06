\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{cla-book}[2019/11/21 Note's book]

\LoadClass[openany]{book}
\bibliographystyle{IEEEtranTIE}

% Index
\RequirePackage{makeidx}
\setcounter{secnumdepth}{0}

% Mathematics
\RequirePackage{amsmath}
\RequirePackage{dsfont} % represent \mathds{R}
\RequirePackage{mathrsfs} % represent \mathscr{S}
\RequirePackage{amssymb} % represent \nvDash
\RequirePackage{stmaryrd} % represent \llbracket

% Table
\RequirePackage{array}
\RequirePackage{booktabs}
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
\usetikzlibrary{chains, automata, positioning, arrows, arrows, backgrounds, 
calc, matrix, shapes, shapes.misc}
\newcommand{\clanodetxt}[1]{\textbf{\footnotesize{#1}}}

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
\RequirePackage{amsthm}
\theoremstyle{definition}
\newmdtheoremenv{cla_def}{Definition}
\newmdtheoremenv{cla_thm}{Theorem}
\newmdtheoremenv{cla_lemma}{Lemma}
\newmdtheoremenv{cla_example}{Example}
\newmdtheoremenv{cla_note}{Note}

\newcommand{\clanewdef}[2]{
  \begin{cla_def}
    (\textbf{#1}).
    #2
  \end{cla_def}
}

\newcommand{\clanewlemma}[2]{
  \begin{cla_lemma}
    (\textbf{#1}).

    #2
  \end{cla_lemma}
}

\newcommand{\clanewthm}[2]{
  \begin{cla_thm}
    (\textbf{#1}).

    #2
  \end{cla_thm}
}

\newcommand{\clanewexample}[2]{
  \begin{cla_example}
    (\textbf{#1}).

    #2
  \end{cla_example}
}

\newcommand{\clanewnote}[2]{
  \begin{cla_note}
    (\textbf{#1}).

    #2
  \end{cla_note}
}




% Code
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{xcolor}
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

% Ocaml language
\lstdefinelanguage{ocaml} {
  style=common
}

% Coq language
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

% Racket language
\lstdefinelanguage{racket} {
  morekeywords={
    define, list, lambda,
    cond, if, and, or,
    define-macro
    },
  sensitive=true,
  morecomment=[l]{;}, 
  morestring=[b]",
  style=common
}

\newcommand{\clalistcode}[2] {
  \lstinputlisting[language=#1]{#2}
}

% Font color

\newcommand{\ctextbf}[1]{ % textbf red
  {\!\color{red}#1\!}
}

\newcommand{\ctextit}[1]{ % textbf red
  \!\colorbox{yellow!30}{#1}\!
}

\newcommand{\crule}{
  \color{black!80} \rule{.9\linewidth}{0.5mm} 
}

% Paragraph
\RequirePackage[english]{babel}

\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

% Spacing between itemize
\setlist[1]{itemsep=-3pt}