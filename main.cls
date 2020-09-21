%%%%%%%%%%%%
% Preamble %
%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{main}[Main]
\LoadClassWithOptions{extarticle}

\RequirePackage{fontspec}
\RequirePackage{tabularx}
\RequirePackage{tikz}
\RequirePackage{titlesec}
\RequirePackage{xcolor}

\usetikzlibrary{fadings}
\tikzset{fading text/.style = {}}

%%%%%%%%%%%
% Lengths %
%%%%%%%%%%%

\setlength{\parskip}   {0cm}
\setlength{\parindent} {0cm}

%%%%%%%%%%
% Colors %
%%%%%%%%%%
% Colors from https://ethanschoonover.com/solarized/

% Background tones
\definecolor{base03}  {RGB}{  0,  43,  54}
\definecolor{base02}  {RGB}{  7,  54,  66}

\definecolor{base2}   {RGB}{238, 232, 213}
\definecolor{base3}   {RGB}{253, 246, 227}

% Content tones
\definecolor{base01}  {RGB}{ 88, 110, 117}
\definecolor{base00}  {RGB}{101, 123, 131}

\definecolor{base0}   {RGB}{131, 148, 150}
\definecolor{base1}   {RGB}{147, 161, 161}

% Accent colours
\definecolor{yellow}  {RGB}{181, 137,   0}
\definecolor{orange}  {RGB}{203,  75,  22}
\definecolor{red}     {RGB}{220,  50,  47}
\definecolor{magenta} {RGB}{211,  54, 130}
\definecolor{violet}  {RGB}{108, 113, 196}
\definecolor{blue}    {RGB}{38,  139, 210}
\definecolor{cyan}    {RGB}{42,  161, 152}
\definecolor{green}   {RGB}{133, 153,   0}

%%%%%%%%%
% Fonts %
%%%%%%%%%

% Heading font
\newfontfamily{\jetbrainsmono}{JetBrainsMono}[
  Path        = fonts/,
  Extension   = .ttf,
  UprightFont = *-Medium,
  BoldFont    = *-Bold,
  FontFace    = {eb}{n}{*-ExtraBold}
]

% Body font
\setmainfont{SFProText}[
  Path        = fonts/,
  Extension   = .otf,
  UprightFont = *-Regular,
  ItalicFont  = *-RegularItalic,
  BoldFont    = *-Semibold
]

% Icon fonts
\newfontfamily{\fabrands}{FontAwesome}[
  Path        = fonts/,
  Extension   = .otf,
  UprightFont = *-Brands
]
\newfontfamily{\iconmonstr}{iconmonstr}[
  Path        = fonts/,
  Extension   = .ttf,
  UprightFont = *-Iconic-Font
]

\DeclareRobustCommand\ebseries{\fontseries{eb}\selectfont}
\DeclareTextFontCommand{\texteb}{\ebseries}

%%%%%%%%%
% Icons %
%%%%%%%%%
% Glyphs from https://iconmonstr.com
%    and also https://fontawesome.com

\newcommand{\iconEmail}           {{\iconmonstr^^^^e05f}}
\newcommand{\iconPhone}           {{\iconmonstr^^^^e06d}}
\newcommand{\iconRocket}          {{\iconmonstr^^^^e078}}
\newcommand{\iconGraduationHat}   {{\iconmonstr^^^^e0cc}}
\newcommand{\iconCalendar}        {{\iconmonstr^^^^e01f}}
\newcommand{\iconNetwork}         {{\iconmonstr^^^^e0e8}}
\newcommand{\iconHome}            {{\iconmonstr^^^^e05e}}
\newcommand{\iconLocation}        {{\iconmonstr^^^^e068}}
\newcommand{\iconInstitute}       {{\iconmonstr^^^^e0ec}}
\newcommand{\iconSkills}          {{\iconmonstr^^^^e116}}
\newcommand{\iconBriefcase}       {{\iconmonstr^^^^e01e}}
\newcommand{\iconLockOpen}        {{\iconmonstr^^^^e062}}
\newcommand{\iconServer}          {{\iconmonstr^^^^e0fa}}
\newcommand{\iconCubes}           {{\iconmonstr^^^^e0f4}}
\newcommand{\iconNotes}           {{\iconmonstr^^^^e0a3}}
\newcommand{\iconLightbulb}       {{\iconmonstr^^^^e116}}
\newcommand{\iconOpenSource}      {{\iconmonstr^^^^e07d}}

\newcommand{\iconGitHub}          {{  \fabrands^^^^f09b}}
\newcommand{\iconLinkedIn}        {{  \fabrands^^^^f08c}}
\newcommand{\iconGoogle}          {{  \fabrands^^^^f1a0}}
\newcommand{\iconCreativeCommons} {{  \fabrands^^^^f25e}}

%%%%%%%%%%
% Titles %
%%%%%%%%%%

% Customize titles

\titleformat
 {\section}% Command
   {\Large}% Format
   {}% Label
   {0cm}% Separation
   {}% Before code
   [\titlerule]% After code

\titleformat
{\subsection}% Command
  [runin]% Shape
  {}% Format
  {}% Label
  {0cm}% Separation
  {}% Before code

% Colored variants

% Colored section
% 1 Label
% 2 Text
% 3 Icon
% 4 Color
\newcommand{\colouredsection}[4]{%
\section[#1]{\jetbrainsmono\textcolor{#4}{\textbf{#2} \hfill #3}}%
}

% Colored subsection
% 1 Label
% 2 Text
% 3 Color
\newcommand{\colouredsubsection}[3]{%
\subsection[#1]{\textcolor{#3}{\jetbrainsmono#2}}%
}

% Resume heirarchy

% Section in the resume
% 1 Label
% 2 Text
% 3 Icon
\newcommand{\resumesection}[3]{%
\colouredsection{#1}{#2}{#3}{green}%
}

% Single line subsection in the resume
% 1 Label
% 2 Text
\newcommand{\resumeonesubsection}[2]{%
\colouredsubsection{#1}{#2}{yellow}%
}

% Double line subsection in the resume
% 1 Label
% 2 Text
% 3 Subtext
% 4 Attribute#1
% 5 Attribute#2
% 6 Icon#1
% 7 Icon#2
\newcommand{\resumetwosubsection}[7]{%
\resumeonesubsection{#1}{#2} \hfill {\textcolor{secondary}{#4}~\textcolor{secondary}{#6}}\\%
{#3}                         \hfill {\textcolor{secondary}{#5}~\textcolor{secondary}{#7}}%
\vspace{2mm}%
}

% Tailored sections

% Timed
% 1 Label
% 2 Text
% 3 Subtext
% 4 Time period
% 5 Attribute#2
% 6 Icon#2
\newcommand{\timedsubsection}[6]{%
\resumetwosubsection{#1}{#2}{#3}{#4}{#5}{\iconCalendar}{#6}%
}

% Work
% 1 Label
% 2 Title
% 3 Category
% 4 Time period
% 5 Tech stack
\newcommand{\worksubsection}[5]{%
\timedsubsection{#1}{#2}{\textbf{#3}}{#4}{#5}{\iconServer}%
}

% Experience
% 1 Label
% 2 Role
% 3 Organisation
% 4 Time period
% 5 Attribute#2
% 6 Icon#2
\newcommand{\experiencesubsection}[6]{%
\timedsubsection{#1}{#2}{@~\textbf{#3}}{#4}{#5}{#6}%
}

% On-site experience
% 1 Label
% 2 Role
% 3 Organisation
% 4 Time period
% 5 Location
\newcommand{\onsiteexperiencesubsection}[5]{%
\experiencesubsection{#1}{#2}{#3}{#4}{#5}{\iconLocation}%
}

% LaTeX
\newcommand{\prettylatex}[0]{% Pretty-print LaTeX
  {\fontfamily{lmr}\selectfont\LaTeX}%
}

% About

% Gradient text with hyperlink
% 1 Gradient configuration
% 2 Hyperlink URL
% 3 Text
\newcommand\fadingtext[3][]{%
  \begin{tikzfadingfrompicture}[name = fading letter]%
    \node[text = transparent!0, inner xsep = 0pt, outer xsep = 0pt]{#3};%
  \end{tikzfadingfrompicture}%
  \begin{tikzpicture}[baseline = (textnode.base)]%
    \node[inner sep = 0pt, outer sep = 0pt](textnode){\href{#2}{\XeTeXLinkBox{\phantom{#3}}}};%
    \shade[path fading = fading letter, fading text, #1, fit fading = false]%
    (textnode.south west) rectangle (textnode.north east);%
  \end{tikzpicture}%
}

\newcommand{\name}[2]{% Person's name
\noindent{%
  \Huge\jetbrainsmono\texteb{%
    \fadingtext[left color = red, right color = magenta]{#1}{#2}%
  }%
}%
\vspace{0.4cm}%
}

\newcommand{\intro}[4]{% Person's introduction
\begin{tabularx}{\linewidth}{@{}Xl@{}}%
  {#1} & {#3} \\%
  {#2} & {#4}%
\end{tabularx}%
}

% Content

\newcommand{\sectiondescription}[1]{% Content for topics
\raggedright#1%
\vspace{-2mm}%
}