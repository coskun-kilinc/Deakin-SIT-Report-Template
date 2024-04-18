% Adapted from Deakin University Honours Thesis template
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sitshonours}[2024/03/31]

\LoadClass{article}

\def\unit#1{\gdef\@unit{#1}}
\def\@unit{\@latex@error{No \noexpand\unit given}\@ehc}
\def\id#1{\gdef\@id{#1}}
\def\@id{\@latex@error{No Student ID (\noexpand\id) given}\@ehc}
\def\course#1{\gdef\@course{#1}}
\def\@course{\@latex@error{No (\noexpand\course) given}\@ehc}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\@supervisor{\@latex@warning@no@line{No \noexpand\supervisor given}}

\renewcommand\maketitle{\begin{titlepage}%
		\let\footnotesize\small
		\let\footnoterule\relax
		\let \footnote \thanks
		\noindent\centering\includegraphics[width=0.25\textwidth]{Deakin_Logo}
		\null\vfil
		\vskip 60\p@
		\begin{center}%
			{\LARGE \@title \par}%
			\vskip 3em%
				{\Large\bfseries\@unit\par}
			\vskip 2em
				{\large {\bfseries Submission Date}\\\@date}
			\vskip 6em
				{\large
					\lineskip .75em%
					\begin{tabular}[t]{c}%
						{\bfseries\@author} \\
						Student ID \@id     \\
						\@course
					\end{tabular}\par}%
			\vfill%
		\end{center}\par
		\@thanks
	\end{titlepage}%
	\setcounter{footnote}{0}%
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\@id\@empty
	\global\let\@course\@empty
	\global\let\@supervisor\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
}

\RequirePackage{setspace}
\RequirePackage{geometry}

\geometry{
	a4paper,
	left=3cm,
	right=3cm,
	top=3cm,
}

\RequirePackage[T1]{fontenc}
\RequirePackage{newpxtext,eulerpx}
