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
\newcommand{\marginLeft}{2cm}
\newcommand{\marginRight}{2cm}
\newcommand{\marginParWidth}{3cm}
\newcommand{\marginParSep}{-1.5cm}

\input{defaultpagestyle}

\makeatother