%%%%%%%%%%%%
% Preamble %
%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{resume}[Resume]
\LoadClassWithOptions{extarticle}

\RequirePackage{titlesec}
\RequirePackage{transparent}

%%%%%%%%%%%%%%%%%
% Format titles %
%%%%%%%%%%%%%%%%%

\titleformat{\section}
    {\large}{}{0em}{}
    [\titlerule]

\titleformat{\subsection}
    {}{}{0em}{}
    [\vspace{-0.25cm}]

%%%%%%%%%%%%%%%%%%%%
% New environments %
%%%%%%%%%%%%%%%%%%%%

\newenvironment{nscenter}
{\parskip=0pt\par\nopagebreak\centering}
{\par\noindent\ignorespacesafterend}

%%%%%%%%%%%%%%%%
% New commands %
%%%%%%%%%%%%%%%%

% About

\newcommand{\name}[1]{% Person's name
{\noindent\LARGE \textbf{#1} \vspace{0.2cm}}%
}

\newcommand{\intro}[4]{% Quick bullets
{\begin{nscenter}
\transparent{0.7}
    \begin{tabularx}{\linewidth}{@{}Xl@{}}
        {#1} & {#3} \\
        {#2} & {#4}
    \end{tabularx}
\end{nscenter}}
}

\newcommand{\social}[1]{% Social media links
{\transparent{0.7}\noindent{#1}}%
}

\newcommand{\socialitem}[3]{% Social media link
{\href{#1}{#2/#3}}
}

% Extends section

\newcommand{\iconsection}[3]{%
\section[#1]{#2 \hfill \transparent{0.7}#3}
}

% Extends subsection

\newcommand{\boldsubsection}[2]{% Topics in boldface
\subsection[#1]{\textbf{#2}}%
}

\newcommand{\datedsubsection}[5]{% Topics with calendar
\subsection[#1]{\textbf{#2} \hfill \transparent{0.7} #3}
{\transparent{0.7} \faCalendar*[regular]\ \ \textit{#4} \hfill #5}%
\vspace{0.2cm}%
}

\newcommand{\projectsubsection}[5]{% Projects
\datedsubsection{#1}{#2}{#3}{#4}{\faServer\ \ {#5}}%
}

% Extends content

\newcommand{\sectiondescription}[1]{% Content for topics
{\raggedright{\transparent{0.7} {#1} \vspace{-0.3cm}}}%
}
