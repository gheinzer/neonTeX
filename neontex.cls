\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{neontex}

\LoadClass[toc=bib, toc=flat]{scrartcl}

\makeatletter

% PACKAGE SETUP ====================================
% TODO \RequirePackage{chemmacros}
\RequirePackage{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{ifthen}
\RequirePackage{caption}
\RequirePackage[EFvoltages, siunitx, straightvoltages, european]{circuitikz}
\RequirePackage{pgfplots}
% TODO \RequirePackage{graphicx}
\RequirePackage{siunitx}
\RequirePackage{scrlayer-scrpage}
% TODO \RequirePackage[bottom]{footmisc}
% TODO \RequirePackage{floatflt}
% TODO \RequirePackage{float}
% TODO \RequirePackage{lipsum}
% TODO \RequirePackage[export]{adjustbox}
% TODO \RequirePackage{subcaption}
\RequirePackage{hyperref}
\RequirePackage[noabbrev,nameinlink]{cleveref}
% TODO \RequirePackage{listings}
\RequirePackage{xparse}
\RequirePackage{xkeyval}
\RequirePackage{changepage}
\RequirePackage{ragged2e}
\RequirePackage{soul}
\RequirePackage{tabularray}
\usetikzlibrary{positioning}
\RequirePackage{nameref}
% TODO \RequirePackage{minted}
\RequirePackage[skip=0.75em]{parskip}
\RequirePackage{wrapfig}
\RequirePackage[section]{placeins}
\RequirePackage{multicol}
% TODO \RequirePackage{chemfig}
\RequirePackage{subcaption}
\RequirePackage{fontspec}
\RequirePackage{neoncommands}
\RequirePackage{neonenvironments}
\RequirePackage{roboto-mono}

% OPTIONS =================================================================
% #### Options for the document class ####
% *** Document metadata ***
\def\neontitle#1{\def\@neontitle{#1}}
\def\neonsubtitle#1{\def\@neonsubtitle{#1}}
\def\neondate#1{\def\@neondate{#1}}
\def\neonauthor#1{\def\@neonauthor{#1}}
\def\neontitlehead#1{\def\@neontitlehead{#1}}

\neontitle{neonTeX}
\neonsubtitle{Use \textbackslash neontitle to set the title of your document!}
\neonauthor{The author will be displayed here!}
\neondate{\today}
\neontitlehead{}

% *** Header and Footer ***
\def\neonihead#1{\def\@neonihead{#1}}
\def\neonchead#1{\def\@neonchead{#1}}
\def\neonohead#1{\def\@neonohead{#1}}
\def\neonifoot#1{\def\@neonifoot{#1}}
\def\neoncfoot#1{\def\@neoncfoot{#1}}
\def\neonofoot#1{\def\@neonofoot{#1}}

\neonihead{\@neontitle}
\neonchead{}
\neonohead{\@neondate}
\neonifoot{}
\neoncfoot{\pagemark}
\neonofoot{}

% *** Page accents ***
\def\neontopstripeheight#1{\def\@neontopstripeheight{#1}}
\def\neontopstripecolor#1{\def\@neontopstripecolor{#1}}
\def\neonbottomstripeheight#1{\def\@neonbottomstripeheight{#1}}
\def\neonbottomstripecolor#1{\def\@neonbottomstripecolor{#1}}

\neontopstripeheight{0.2cm}
\neontopstripecolor{neonprimary}
\neonbottomstripeheight{0.2cm}
\neonbottomstripecolor{neonprimary}

% *** Fonts ***
\def\neonheadingfont#1{\def\@neonheadingfont{#1}}
\neonheadingfont{\normalfont\robotomono\bfseries}

% #### Colors ####
\definecolor{neonprimary}{RGB}{240,124,0}
\definecolor{neonsecondary}{RGB}{217,11,119}
\definecolor{neontertiary}{RGB}{240,232,0}
\definecolor{neonquarternary}{RGB}{71,103,255}

% Styling =====================================================
% Headers and Footers
\def\neonfooterstyle#1{\def\@neonfooterstyle{#1}}
\def\neonheaderstyle#1{\def\@neonheaderstyle{#1}}
\def\neonpagemarkstyle#1{\def\@neonpagemarkstyle{#1}}

\neonfooterstyle{\@neonheadingfont\color{neonprimary}}
\neonpagemarkstyle{\@neonheadingfont\color{neonprimary}}
\neonheaderstyle{\@neonheadingfont\color{neonprimary}}

% Miscellaneous
\newcommand{\keywordStyle}{\@neonheadingfont\color{neonsecondary}}

% Margin ======================================================
\def\neonmarginleft#1{\def\@neonmarginleft{#1}}
\def\neonmarginright#1{\def\@neonmarginright{#1}}
\def\neonmarginbottom#1{\def\@neonmarginbottom{#1}}
\def\neonmargintop#1{\def\@neonmargintop{#1}}
\def\neonmarginparwidth#1{\def\@neonmarginparwidth{#1}}
\def\neonmarginparsep#1{\def\@neonmarginparsep{#1}}

\neonmarginright{2cm}
\neonmarginleft{2cm}
\neonmargintop{2cm}
\neonmarginbottom{2cm}
\neonmarginparwidth{3cm}
\neonmarginparsep{-1.5cm}

% PAGE SETUP ========================================
\RequirePackage[a4paper, vmargin={2cm}, left={\@neonmarginleft}, right={\@neonmarginright}, top={\@neonmargintop}, bottom={\@neonmarginbottom}, marginparwidth={\@neonmarginparwidth}, marginparsep={\@neonmarginparsep}]{geometry}

% COLOR CONSTANTS ===================================
\definecolor{gray}{RGB}{150,150,150}

% FONT SETUP ========================================

\setkomafont{pagehead}		  {\@neonheaderstyle}
\setkomafont{pagefoot}		  {\@neonfooterstyle}
\setkomafont{pagenumber}		{\@neonpagemarkstyle}
\setkomafont{captionlabel}	  {\@neonheadingfont\color{neonprimary}}
\setkomafont{sectioning}		{\@neonheadingfont\color{neonprimary}}
\setkomafont{title}			 {\@neonheadingfont\color{black}}
\setkomafont{sectionentry}	  {\@neonheadingfont\color{black}}

\setmainfont{Open Sans}

% SYNTAX HIGHLIGHTING SETUP =========================
% Todo remove this
% \lstdefinestyle{defaultStyle}{
% 	basicstyle={\robotomono},
% 	identifierstyle={},
% 	stringstyle={\color{neonprimary}},
% 	keywordstyle={\bfseries\color{neonsecondary}},
% 	commentstyle={\itshape\color{gray}},
% 	extendedchars,
% 	showstringspaces=false,
% 	numberstyle={\color{gray}},
% 	escapeinside={\%*}{*)}
% }
% \lstset{style=defaultStyle}

% CAPTION SETUP =====================================
\input{customcaptions}
\hypersetup{
	colorlinks,
	citecolor=black,
	filecolor=black,
	linkcolor=black,
	urlcolor=black
}

% TIKZ AND CIRUITIKZ SETUP ==================================
\tikzset{
	triangleArrow/.style={-{Triangle[length=3mm,width=1mm]}}
}
\tikzset{
	triangleDoubleArrow/.style={{Triangle[length=3mm,width=1mm]}-{Triangle[length=3mm,width=1mm]}}
}
\ctikzset{
	resistors/scale=0.75, % smaller R
	diodes/scale=0.75,
	voltage shift=2.0
}

% UNIT SETUP ========================================
\sisetup{ % Makes sure that everything is in the document font
	detect-all,
	mode = math,
	% series-version-mapping / m = sans,
	reset-text-family = true,
	reset-text-series = true,
	reset-text-shape = true
	% mode = text,
	% reset-text-family = false ,
	% reset-text-series = false ,
	% reset-text-shape = false
}

% TITLE PAGE SETUP ==================================
\titlehead{\@neontitlehead}
\title{\@neontitle}
\subtitle{\@neonsubtitle}
\author{\@neonauthor}
\date{\@neondate}

% HEADER AND FOOTER SETUP ===========================
\ihead{\rectfrompagetop{\@neontopstripecolor}{\@neontopstripeheight}\@neonihead}
\chead{\@neonchead}
\ohead{\@neonohead}

\ifoot{\rectfrompagebottom{\@neonbottomstripecolor}{\@neonbottomstripeheight}\@neonifoot}
\cfoot{\@neoncfoot}
\ofoot{\@neonofoot}

\renewcommand\titlepagestyle{empty}

% PDF METATDATA SETUP ===============================
\hypersetup{
	pdftitle={\@neontitle},
	pdfsubject={\@neonsubtitle},
	pdfauthor={\@neonauthor},
	pdfcreator={LaTeX with NeOnTeX},
	xetex,
}

% TABLE SETUP =======================================
\renewcommand{\arraystretch}{1.5}

\makeatother