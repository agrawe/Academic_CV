% Load Class, pass specified options to loaded class, 
\LoadClassWithOptions{extarticle}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[custom cv class]
%\renewcommand{\familydefault}{\sfdefault}

% Packages
\RequirePackage{geometry}
\RequirePackage{hyperref}
\RequirePackage{libertine}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{fancyhdr}
%\RequirePackage{setspace}

% Set parameters
\geometry{a4paper, margin = 2cm}
\setlength{\parindent}{0ex} 

% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
\pagestyle{fancy}


\hypersetup{
    colorlinks=true,   
    urlcolor=Blue,
    }

\hbadness=99999

% Define inputs
\newcommand*{\name}[1]{\def\@name{#1}}
\newcommand{\inst}[1]{\def\@inst{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\website}[1]{\def\@website{#1}}
\newcommand{\address}[1]{\def\@address{#1}}

% Current Month and Year
\newcommand*{\printdate}{%
   \ifcase \month\or January\or February\or March\or April\or May\or June\or July\or
    August\or September\or October\or November\or December\fi \space \number\year}

% CV Header
\newcommand{\cvheader}{
    \begin{center}
    {\LARGE \@name}\vspace{1em}

    \@inst

    \href{mailto:\@email}{\@email}
    \hspace{1ex} $\mid$ \hspace{1ex} 
    \href{https://\@website}{www.\@website}\\
\end{center}
}

% CV Contact
\newcommand{\cvcontact}{
    \hrule
    \vspace{2ex}
    \cventry{\textbf{Contact}}{\@name\\ \@address}{}   
}


% CV Section
\newcommand{\cvsection}[1]{
    \textbf{\large #1} 
    \vspace{1ex}
    \hrule
    \vspace{1.5ex}
}

% CV Entry
\newcommand{\cventry}[3]{
    \begin{minipage}[t]{0.25\textwidth}
        #1
    \end{minipage}
    \begin{minipage}[t]{0.59\textwidth}
        #2
    \end{minipage}
    \begin{minipage}[t]{0.15\textwidth}
        \begin{flushright}
            #3
        \end{flushright} 
    \end{minipage}
}

% CV Entry 2
\newcommand{\cvinterests}[1]{
    \begin{minipage}[t]{0.25\textwidth}
        \textbf{Research Interests:}
    \end{minipage}
    \begin{minipage}[t]{0.74\textwidth}
        #1
    \end{minipage}\\
}

%  CV Footer
\newcommand*{\cvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{#1}
  \fancyfoot[C]{#2}
  \fancyfoot[R]{#3}
}