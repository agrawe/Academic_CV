\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[custom cv class]

% Packages
\RequirePackage{geometry}
\RequirePackage{hyperref}

% Page layout
\geometry{a4paper, margin = 2cm}
\setlength{\parindent}{0ex} % Remove indent
\setlength{\parskip}{0ex}

% Current Month and Year
\newcommand*{\printdate}{%
   \ifcase \month\or January\or February\or March\or April\or May\or June\or July\or
    August\or September\or October\or November\or December\fi \space \number\year}


% CV Section
\newcommand{\cvsection}[1]{
    \textbf{\large #1} 
    \vspace{1ex}
    \hrule
    \vspace{2ex}
}

% CV Entry

\newcommand{\cventry}[3]{
    \begin{minipage}{0.25\textwidth}
        #1
    \end{minipage}
    \begin{minipage}{0.59\textwidth}
        #2
    \end{minipage}
    \begin{minipage}{0.15\textwidth}
        \begin{flushright}
            #3
        \end{flushright} 
    \end{minipage}
}


