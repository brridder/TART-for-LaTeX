\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{technical_assignment_report}[2012/05/20 Technical Assignment/Report Template]

\LoadClass{article}

\usepackage[utf8]{inputenc} 	% set input encoding (not needed with XeLaTeX)

%%% PAGE DIMENSIONS
\usepackage{geometry} 		% to change the page dimensions
\geometry{letterpaper}		% or a4paper or a5paper or.... 
\geometry{margin=1in} 		% for example, change the margins to 2 inches all round

\usepackage{graphicx} 		% support the \includegraphics command and options

\usepackage[parfill]{parskip}	 % Activate to begin paragraphs with an empty line rather than an indent

%%% PACKAGES
\usepackage{booktabs} 		% for much better looking tables
\usepackage{array}			% for better arrays (eg matrices) in math
\usepackage{paralist} 		% very flexible & customisable lists (eg. enumerate/itemize, etc.)
\usepackage{verbatim} 		% adds environment for commenting out blocks of text & for better verbatim
\usepackage{subfig} 		% make it possible to include more than one captioned figure/table in a single float
\usepackage{etoolbox}

%%% HEADERS & FOOTERS
\usepackage{fancyhdr} 		% This should be set AFTER setting up the page geometry
\pagestyle{plain} 			% options: empty , plain , fancy
\renewcommand{\headrulewidth}{0pt} % customise the layout...
\lhead{}\chead{}\rhead{}
\lfoot{}\cfoot{\thepage}\rfoot{}

\RequirePackage{titlesec}

\titleformat{\section}         % Customise the \section command 
  {\fontsize{10}{11}\bf\raggedright}	 
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading

\titleformat{\subsection}      % Customise the \subsection command 
  {\fontsize{11}{11}\slshape{\bfseries\raggedright}}	   
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading


%%% MACROS
\newcommand{\coursetitle}[1]{\newcommand{\course}{#1}}
\newcommand{\assignmenttitle}[1]{\newcommand{\assignment}{#1}}
\newcommand{\assignmentdate}[1]{\newcommand{\duedate}{#1}}
\newcommand{\groupnumber}[1]{\newcommand{\group}{Group \##1}}
\newcommand{\groupmembers}[5]{\newcommand{\groupmem}{{#1  #2  #3  #4  #5}}}

\newcommand{\fulltitle}{\begin{center}%	
{{\fontsize{12}{12}\selectfont\textbf{\course\vspace{2pt}%
\\\assignment}}\vspace{4pt}\\\duedate\vspace{15pt}\\{\fontsize{8.5}{9}%
\selectfont\group\\\groupmem}}\end{center}}%

\newcommand{\fulltitlegroupnum}{\begin{center}%
{{\fontsize{12}{12}\selectfont\textbf{\course\vspace{2pt}%
\\\assignment}}\vspace{4pt}\\\duedate\vspace{15pt}\\{\fontsize{8.5}{9}%
\selectfont\group}}\end{center}}%

\newcommand{\fulltitlegroupmem}{\begin{center}%
{{\fontsize{12}{12}\selectfont\textbf{\course\vspace{2pt}%
\\\assignment}}\vspace{4pt}\\\duedate\vspace{15pt}\\{\fontsize{8.5}{9}%
\selectfont\groupmem}}\end{center}}%


%%% SECTION TYPES
\newcommand{\nsection}[1]{\section*{#1}}
\newcommand{\ncitation}[1]{\newpage\section*{#1}}

%%% HEADINGS
\newcommand{\brief}{\section*{Brief}}
\newcommand{\environment}{\section*{Environment}}
\newcommand{\setup}{\section*{Setup}}
\newcommand{\erroranalysis}{\section*{Error Analysis}}

%%% STYLES
\newcommand{\mnspace}[1]{{\texttt{\bfseries#1}}}


%%% FORMULAE
\newcommand{\percenterror}[2]{$$\%Error = \frac{#1-#2}{#2}$$}

