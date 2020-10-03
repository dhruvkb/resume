%%%%%%%%%%%%
% Preamble %
%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{main}[Main]
\LoadClassWithOptions{extarticle}

\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{tikz}
\RequirePackage{titlesec}
\RequirePackage{xcolor}

\usetikzlibrary{backgrounds}
\usetikzlibrary{fadings}
\tikzset{fading text/.style = {}}

%%%%%%%%%%%
% Lengths %
%%%%%%%%%%%

% Standard
\setlength{\parskip}   {0mm}
\setlength{\parindent} {0mm}
\setlength{\columnsep} {8mm}

% Custom
\newlength{\margin}
\newlength{\sectionseptop}
\newlength{\sectionsepbottom}
\newlength{\subsectionseptop}
\newlength{\subsubsectionseptop}
\newlength{\descriptionseptop}

\setlength{\margin}                 {8mm}
\setlength{\sectionseptop}          {2mm}
\setlength{\sectionsepbottom}       {1mm}
\setlength{\subsectionseptop}       {2mm}
\setlength{\subsubsectionseptop}    {2mm plus \smallskipamount}% Glue to ensure both columns line up
\setlength{\descriptionseptop}      {1mm}

%%%%%%%%%%
% Colors %
%%%%%%%%%%
% Colors from https://ethanschoonover.com/solarized/

% Background tones
\definecolor{base03}   {RGB}{  0,  43,  54}
\definecolor{base02}   {RGB}{  7,  54,  66}

\definecolor{base2}    {RGB}{238, 232, 213}
\definecolor{base3}    {RGB}{253, 246, 227}

% Content tones
\definecolor{base01}   {RGB}{ 88, 110, 117}
\definecolor{base00}   {RGB}{101, 123, 131}

\definecolor{base0}    {RGB}{131, 148, 150}
\definecolor{base1}    {RGB}{147, 161, 161}

% Accent colours
\definecolor{yellow}   {RGB}{181, 137,   0}
\definecolor{orange}   {RGB}{203,  75,  22}
\definecolor{red}      {RGB}{220,  50,  47}
\definecolor{magenta}  {RGB}{211,  54, 130}
\definecolor{violet}   {RGB}{108, 113, 196}
\definecolor{blue}     {RGB}{38,  139, 210}
\definecolor{cyan}     {RGB}{42,  161, 152}
\definecolor{green}    {RGB}{133, 153,   0}

% Theme mappings
\colorlet{background}  {base3}
\colorlet{content}     {base00}
\colorlet{secondary}   {base1}
\colorlet{highlighted} {base01}

% Color implementation
\pagecolor             {background}
\color                 {content}

%%%%%%%%%
% Fonts %
%%%%%%%%%

% Heading font
\newfontfamily{\jetbrainsmono}{JetBrainsMono}

% Body font
\newfontfamily{\sfprotext}{SFProText}

% Icon fonts
\newfontfamily{\fabrands}{FontAwesome}
\newfontfamily{\iconmonstr}{IconMonstr}

% Font aliases
\setmainfont{SFProText}
\setsansfont{SFProText}
\setmonofont{JetBrainsMono}

% Add a `'\texteb` command for ExtraBold weight similar to `'\textbf`
\DeclareRobustCommand{\ebseries}{\fontseries{eb}\selectfont}
\DeclareTextFontCommand{\texteb}{\ebseries}

%%%%%%%%
% URLs %
%%%%%%%%

\hypersetup{%
  colorlinks      = false,% Remove font colour.
  urlbordercolor  = red,% Produce colored border around the links.
  pdfborderstyle  = {/S/U/W 1}% Style is underline of width 1pt.
}

%%%%%%%%%
% Icons %
%%%%%%%%%
% TODO: Replace IconMonstr with Ionicons to match the site.
% Glyphs from https://iconmonstr.com
%    and also https://fontawesome.com

\newcommand{\iconEmail}           {{\iconmonstr^^^^e05f}}
\newcommand{\iconPhone}           {{\iconmonstr^^^^e06d}}
\newcommand{\iconRocket}          {{\iconmonstr^^^^e078}}
\newcommand{\iconGraduationHat}   {{\iconmonstr^^^^e0cc}}
\newcommand{\iconCalendar}        {{\iconmonstr^^^^e01f}}
\newcommand{\iconAtom}            {{\iconmonstr^^^^e0e8}}
\newcommand{\iconHome}            {{\iconmonstr^^^^e05e}}
\newcommand{\iconLocation}        {{\iconmonstr^^^^e068}}
\newcommand{\iconInstitute}       {{\iconmonstr^^^^e0ec}}
\newcommand{\iconBriefcase}       {{\iconmonstr^^^^e01e}}
\newcommand{\iconServer}          {{\iconmonstr^^^^e0fa}}
\newcommand{\iconCubes}           {{\iconmonstr^^^^e0f4}}

\newcommand{\iconGitHub}            {{\fabrands^^^^f09b}}
\newcommand{\iconLinkedIn}          {{\fabrands^^^^f08c}}

%%%%%%%%%%
% Titles %
%%%%%%%%%%

%------%
% Part %
%------%

% Invisible part tag
% Top-level section, identifies the page as cover letter or résumé
\newcommand{\invisiblepart}[1]{%
  \refstepcounter{part}% Incrememnt counter
  \addcontentsline{toc}{part}{\protect\numberline{\thepart}#1}% Add to ToC
}

%---------%
% Section %
%---------%

% Format sections
% 1*After code; default: null
\newcommand{\formatsection}[1][]{%
  \titleformat{name = \section}
    % Shape
    {\Large\jetbrainsmono\bfseries}% Format
    {}% Label
    {0mm}% Sep
    {}% Before code
    [{#1}]% After code
}

\titlespacing{\section}
  {0mm}
  {\sectionseptop}
  {\sectionsepbottom}

% Format sections as they should appear in the cover letter
\newcommand{\formatcoversections}{%
  \formatsection%
}

% Format sections as they should appear in the résumé
\newcommand{\formatresumesections}{%
  \formatsection[\titlerule]%
}

% Coloured section
% 1*Colour; default: green
% 2 Label
% 3 Title
\newcommand{\colouredsection}[3][green]{%
  \section[#2]{\textcolor{#1}{#3}}%
}

%------------%
% Subsection %
%------------%

% Format subsections
\titleformat{name = \subsection}
  [runin]% Shape
  {\large\jetbrainsmono\bfseries}% Format
  {}% Label
  {0mm}% Sep
  {}% Before code
  % After code

\titlespacing{\subsection}
  {0mm}
  {0mm}% Doesn't work because `runin` shape
  {0mm}

% Coloured subsection
% 1*Colour; default: cyan
% 2 Label
% 3 Title
\newcommand{\colouredsubsection}[3][cyan]{%
  \vspace*{\subsectionseptop}
  \subsection[#2]{\textcolor{#1}{#3}}%
}

%---------------%
% Subsubsection %
%---------------%

% Format subsubsections
\titleformat{name = \subsubsection}
  [runin]% Shape
  {\bfseries}% Format
  {}% Label
  {0mm}% Sep
  {}% Before code
  % After code

\titlespacing{\subsubsection}
  {0mm}
  {0mm}% Doesn't work because `runin` shape
  {0mm}

% Colored subsubsection
% 1*Colour; default: blue
% 2 Label
% 3 Title
\newcommand{\colouredsubsubsection}[3][blue]{%
  \vspace*{\subsubsectionseptop}
  \subsubsection[#2]{\textcolor{#1}{#3}}%
}

%%%%%%%%%%
% Common %
%%%%%%%%%%

% Gradient text with hyperlink
% 1*Gradient configuration; default: 'left color = red, right color = magenta'
% 2 Hyperlink URL
% 3 Text
\newcommand{\fadingtext}[3][left color = red, right color = magenta]{%
  \begin{tikzfadingfrompicture}[name = fading letter]%
    \node[text = transparent!0, inner xsep = 0pt, outer xsep = 0pt]{#3};%
  \end{tikzfadingfrompicture}%
  \begin{tikzpicture}[baseline = (textnode.base)]%
    \begin{scope}[on background layer]%
      \node[inner sep = 0pt, outer sep = 0pt, text = red]
        (textnode){#3};%
    \end{scope}%
    \node[inner sep = 0pt, outer sep = 0pt]
      (textnode){\href{#2}{\XeTeXLinkBox{\phantom{#3}}}};%
    \shade[path fading = fading letter, fading text, #1, fit fading = false]%
      (textnode.south west) rectangle (textnode.north east);%
  \end{tikzpicture}%
}

% Person's name
% 1 Hyperlink URL
% 2 Text
\newcommand{\name}[2]{%
  {\Huge\jetbrainsmono\texteb{\fadingtext{#1}{#2}}}%
  \vspace{2mm}%
}

% Person's introduction
\newcommand{\intro}[4]{%
  \begin{tabularx}{\linewidth}{@{}Xl@{}}%
    {#1} & {#3} \\%
    {#2} & {#4}%
  \end{tabularx}%
}

% Pretty-print LaTeX.
% The function prints the word LaTeX as in the logo for the project.
\newcommand{\prettylatex}[0]{%
  {\fontfamily{lmr}\selectfont\LaTeX}%
}

%%%%%%%%%%%%%%%%
% Cover letter %
%%%%%%%%%%%%%%%%

% Section
% 1 Title
\newcommand{\coversection}[1]{%
  \colouredsection{#1}{#1}%
}

%%%%%%%%%%
% Résumé %
%%%%%%%%%%

% Time period
% 1*End date; default=nil
% 2 Start date
\newcommand{\timeperiod}[2][]{%
  \if&#1&
    Since #2
  \else
    #2 -- #1
  \fi
}

% Section
% 1 Title
% 2 Icon
\newcommand{\resumesection}[2]{%
  \colouredsection{#1}{#1 \hfill #2}%
}

% Subsection with an associated time-period
% This is used as the subsection in the 'Education' and 'Projects' sections.
%
% 1 Title
% 2 Time period
\newcommand\timedsubsection[2]{%
  \colouredsubsection{#1}{#1} \hfill \textcolor{secondary}{#2~\iconCalendar}%
}

% Project subsection
% This is used as the subsection in the 'Education' and 'Projects' sections.
%
% 1 Title
% 2 Time period
% 3 URL
\newcommand\projectsubsection[3]{%
  \colouredsubsection{#1}{\href{#3}{#1}} \hfill \textcolor{secondary}{#2~\iconCalendar}\\%
  \vspace{0.5mm}%
  {\small\textcolor{secondary}{\url{#3}}}%
}

% Subproject
% This is used as the sub-subsection in the 'Project' section.
%
% 1 Subtitle
% 2 Tech stack
\newcommand\projectsubsubsection[2]{%
  \colouredsubsubsection{#1}{#1} \hfill \textcolor{secondary}{#2~\iconServer}%
}

% Organisation
% This is used the subsection in the 'Experience' section.
%
% 1*Location icon
% 2 Name
% 3 Location
% 4 URL
\newcommand\organisationsubsection[4][\iconLocation]{%
  \colouredsubsection{#2}{\href{#4}{#2}} \hfill \textcolor{secondary}{#3~#1}\\%
  \vspace{0.5mm}%
  {\small\textcolor{secondary}{\url{#4}}}%
}

% Role
% This is used the sub-subsection in the 'Experience' section.
%
% 1 Designation
% 2 Time period
\newcommand\rolesubsubsection[2]{%
  \colouredsubsubsection{#1}{#1} \hfill \textcolor{secondary}{#2~\iconCalendar}%
}

% Content
% Content placed in this environment is ragged right and no attempt is made to
% justify the text.
\newenvironment{sectiondescription}
  {\vspace{\descriptionseptop}\raggedright}
  {}
