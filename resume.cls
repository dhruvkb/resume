%%%%%%%%%%%%
% Preamble %
%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{resume}[Resume]
\LoadClassWithOptions{extarticle}

\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage{xcolor}

%%%%%%%%%%%%%%%%%
% Format titles %
%%%%%%%%%%%%%%%%%

\titleformat{\section}
    {\large}{}{0em}{}
    [\titlerule]

\titleformat{\subsection}
    {}{}{0em}{}
    [\vspace{-0.25cm}]

%%%%%%%%%%%%%%
% Formatting %
%%%%%%%%%%%%%%

% Colors

% Background tones
\definecolor{base03}{RGB}{0, 43, 54}
\definecolor{base02}{RGB}{7, 54, 66}

\definecolor{base2}{RGB}{238, 232, 213}
\definecolor{base3}{RGB}{253, 246, 227}

% Content tones
\definecolor{base01}{RGB}{88, 110, 117}
\definecolor{base00}{RGB}{101, 123, 131}

\definecolor{base0}{RGB}{131, 148, 150}
\definecolor{base1}{RGB}{147, 161, 161}

% Accent colours
\definecolor{yellow}{RGB}{181, 137, 0}
\definecolor{orange}{RGB}{203, 75, 22}
\definecolor{red}{RGB}{220, 50, 47}
\definecolor{magenta}{RGB}{211, 54, 130}
\definecolor{violet}{RGB}{108, 113, 196}
\definecolor{blue}{RGB}{38, 139, 210}
\definecolor{cyan}{RGB}{42, 161, 152}
\definecolor{green}{RGB}{133, 153, 0}

% Lengths

\setlength{\parindent}{0cm}
\setlength{\textfloatsep}{0cm}

% Fonts

\newfontfamily{\spacegrotesk}{SpaceGrotesk}[
  Path = fonts/,
  Extension = .otf,
  UprightFont = *-Bold
]
\newfontfamily{\fafree}{FontAwesomeFree}[
  Path = fonts/,
  Extension = .otf,
  UprightFont = *-Solid
]
\newfontfamily{\fabrands}{FontAwesomeBrands}[
  Path = fonts/,
  Extension = .otf,
  UprightFont = *-Regular
]

\setmainfont{IBMPlexSans}[
  Path = fonts/,
  Extension = .otf,
  UprightFont = *-Regular,
  ItalicFont = *-Italic
]

%%%%%%%%%%%%%%%%
% New commands %
%%%%%%%%%%%%%%%%

% Icons
% Glyphs copied from https://fontawesome.com/cheatsheet
\newcommand{\fasEnvelope}{{\fafree}}
\newcommand{\fasPhone}{{\fafree}}

\newcommand{\fabGitHub}{{\fabrands}}
\newcommand{\fabLinkedIn}{{\fabrands}}
\newcommand{\fabCreativeCommons}{{\fabrands}}

\newcommand{\fasRocket}{{\fafree}}
\newcommand{\fasMedal}{{\fafree}}
\newcommand{\fasUniversity}{{\fafree}}
\newcommand{\fasBriefcase}{{\fafree}}
\newcommand{\fasUserTie}{{\fafree}}
\newcommand{\fasLightbulb}{\fafree}
\newcommand{\fasLockOpen}{{\fafree}}
\newcommand{\fasCubes}{{\fafree}}
\newcommand{\fasPenNib}{{\fafree}}

\newcommand{\fasCalendar}{{\fafree}}
\newcommand{\fasGraduationCap}{{\fafree}}
\newcommand{\fasMapMarker}{{\fafree}}
\newcommand{\fasServer}{{\fafree}}

% About

\newcommand{\name}[1]{% Person's name
\noindent{\LARGE\spacegrotesk\textcolor{red}{#1}}
\vspace{0.4cm}%
}

\newcommand{\intro}[4]{% Person's introduction
\vspace{2mm}
\begin{tabularx}{\linewidth}{@{}Xl@{}}
  {#1} & {#3} \\
  {#2} & {#4}
\end{tabularx}
\vspace{-4mm}
}

% Extends section

%
% 1 Label
% 2 Text
% 3 Colour
% 4 Icon
\newcommand{\colouredsection}[4]{% Coloured headings with icons
\section[#1]{\spacegrotesk\textcolor{#3}{#2\hfill#4}}%
}

% Extends subsection

%
% 1 Label
% 2 Text
\newcommand{\sgsubsection}[2]{% Topics in Space Grotesk
\subsection[#1]{{\spacegrotesk#2}}%
}

%
% 1 Label
% 2 Text
% 3 Subtext
% 4 Attribute 1
% 5 Attribute 2
\newcommand{\datedsubsection}[5]{% Topics with calendar
\subsection[#1]{{\spacegrotesk#2} \hfill \textcolor{secondary}{\fasCalendar~#4}}%
{\textcolor{secondary}{{\spacegrotesk#3} \hfill #5}}%
\vspace{2mm}%
}

\newcommand{\onsiteexperiencesubsection}[5]{%
\datedsubsection{#1}{#2}{#3}{#4}{\fasMapMarker~#5}
}


\newcommand{\worksubsection}[5]{% Projects
\datedsubsection{#1}{#2}{#3}{#4}{\fasServer~#5}%
}

% Extends content

\newcommand{\sectiondescription}[1]{% Content for topics
\raggedright#1%
\vspace{-2mm}%
}