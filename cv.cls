\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2011/03/26 My custom CV class]
\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{xkeyval}%
\RequirePackage{enumitem}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% vspace for maintitle as a parameter

\def\varspacetitle{5mm}
\def\varspacesection{0mm}
\def\vartopmargin{1cm}
\def\varbottommargin{1cm}

\define@key{cv.cls}{varspacetitle}[\varspacetitle]{%
  \def\varspacetitle{#1}%
}

\define@key{cv.cls}{varspacesection}[5mm]{%
  \def\varspacesection{#1}%
}

\define@key{cv.cls}{vartopmargin}[1cm]{%
  \def\vartopmargin{#1}%
}

\define@key{cv.cls}{varbottommargin}[1cm]{%
  \def\varbottommargin{#1}%
}

\ExecuteOptionsX{varspacetitle, varspacesection, vartopmargin, varbottommargin}
\ProcessOptionsX%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\geometry{left=1cm, right=1cm, top=\vartopmargin, bottom=\varbottommargin}
\setlength{\parindent}{0cm}

\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist 

\pagenumbering{gobble}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
[\titlerule] % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
{}

\newcommand{\maintitle}[1]{
  %\vspace{\varspacetitle}
  \vspace{0.3cm}
  \centerline{\huge{#1}}
}

\newcommand{\subtitle}[1]{
  \centerline{\large{\textsc{#1}}}
}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill \textit{#2}}%
}
% \newcommand{\datedsubsection}[3]{%
%   \begin{tabular}{p{4cm} l}
%    \textit{#1} & \textrm{#2} \\
%     & \textrm{#3} \\
%   \end{tabular}
% }
\newcommand{\datedsubsectionshort}[3]{%
  \begin{tabular}{p{3.8cm} l}
   \textit{#1} & \textrm{#2} \\
  \end{tabular}
  \par
}
\newcommand{\fullsubsection}[5]{%
  \textbf{#1} \textit{#2} \hfill \textbf{#3} \\
  #4 \hfill #5
 
}
\newcommand{\newformation}[5]
{%
  \text{#3} \hspace{2cm}\textbf{#1}  \text{#2} \\
  #4 \hfill #5
 
}
\newcommand*{\cventryprofessionnal}[5]
{
\setbox0=\hbox{hi}
%\stringwidth=\wd0

  \begin{tabular*}{\textwidth}{p{0.17\textwidth} p{0.6\textwidth}@{\extracolsep{\fill}}r}%
	 {\bfseries#1} &  {\bfseries #2} {\text{--}} {\bfseries #3} & {\bfseries #4} \\%
	 
	  %\vspace{-3cm}
  \end{tabular*}
  \vspace{-3mm}
}
\newcommand*{\cventryacademic}[5]
{
\setbox0=\hbox{hi}
%\stringwidth=\wd0

  \begin{tabular*}{\textwidth}{p{0.17\textwidth} p{0.6\textwidth}@{\extracolsep{\fill}}r}%
	 {\bfseries#1} &  {\bfseries #2}  & {\bfseries #4} \\%
	 {} & {\text #3} & {}\\
	 
	  %\vspace{-3cm}
  \end{tabular*}
  \vspace{-0.5mm}
}

\newcommand*{\cventryacademicnodes}[5]
{
\setbox0=\hbox{hi}
%\stringwidth=\wd0

  \begin{tabular*}{\textwidth}{p{0.17\textwidth} p{0.6\textwidth}@{\extracolsep{\fill}}r}%
	 {\bfseries#1} &  {\bfseries #2}  & {\bfseries #4} \\%
	 	  %\vspace{-3cm}
  \end{tabular*}
  \vspace{-3mm}
}

\newcommand*{\cventryacademicproject}[5]
{
\setbox0=\hbox{hi}
%\stringwidth=\wd0

  \begin{tabular*}{\textwidth}{p{0.2\textwidth} p{0.6\textwidth}@{\extracolsep{\fill}}r}%
	 {\bfseries#1} &  {\bfseries #2}  & {\bfseries #4} \\%
	 	  %\vspace{-3cm}
  \end{tabular*}
  \vspace{-3mm}
}


 \newcommand*
 % \newcommand{\datedsubsectionlong}[4]{%
%   \begin{tabular}{p{3cm} l}
%    \textit{#1} & \textrm{#2} \\
%     & \textrm{#3} \\
%     & \textrm{#4} \\
%   \end{tabular}
% }

\newcommand{\namecenter}[1]{
  \centerline{\LARGE{#1}}
}

\newcommand{\nameleft}[1]{
  {\LARGE#1}
}

\newcommand{\contact}[5]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4 \ {\Large} #5
}

\newcommand{\workitems}[3]{
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}

\newenvironment{jobdescription}[1][4.8]{
  \begingroup
    \leftskip#1cm
    \rightskip0cm
}{
  \par
  \endgroup
  \vspace{2mm}
}

\titlespacing{\section}{0cm}{\varspacesection}{2mm}
%varspacesection decale n"nom de la boite" et premiere section
\newcommand{\CC}{C\nolinebreak\hspace{-.05em}\raisebox{.4ex}{\tiny\bf +}\nolinebreak\hspace{-.10em}\raisebox{.4ex}{\tiny\bf +}}
\def\CC{{C\nolinebreak[4]\hspace{-.05em}\raisebox{.4ex}{\tiny\bf ++}}}

