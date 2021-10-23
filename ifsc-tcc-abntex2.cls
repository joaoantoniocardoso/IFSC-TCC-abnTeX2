%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade XXXX
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.s
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is github.com/joaoantoniocardoso
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifsc-tcc-abntex2}[2021/05/27 v1.0 Modelo de TCC do IFSC baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% ----------------------------------------------------------
% Referências de customização da classe AbnTeX2:
% https://github.com/abntex/abntex2/wiki/ComoCustomizar
% ----------------------------------------------------------

\usepackage{conf-pacotes}
\usepackage{conf-comandos}
\usepackage{conf-macro}

% ----------------------------------------------------------
% Configuração do pacote de SI
% ----------------------------------------------------------
\sisetup{detect-all} % Configura fonte do pacote siunitx
\sisetup{output-decimal-marker = {,}}
\sisetup{mode = text}

% ----------------------------------------------------------
% Configuração das figuras
% ----------------------------------------------------------
\newlength{\imagewidth}  % the name can be chosen, e.g. picwidth...
\captionsetup[figure]{font={footnotesize,bf}}
\captionsetup[table]{font={footnotesize,bf}}

% ----------------------------------------------------------
% Definicao da geometria da página - Conforme Norma para TCC IFSC
% ----------------------------------------------------------
\RequirePackage[
    inner=3.0cm,
    outer=2.0cm,
    top=3.0cm,
    bottom=2.0cm,
    head=0.7cm,
    foot=0.7cm
]{geometry}

% ----------------------------------------------------------
% ..........................................................
% CONFIGURAÇÕES DE PACOTES
% ..........................................................
% ----------------------------------------------------------

% ----------------------------------------------------------
% Fontes padroes de part, chapter, section, subsection e subsubsection
% ----------------------------------------------------------
\renewcommand{\familydefault}{\sfdefault}             % Fonte Arial

\renewcommand{\ABNTEXchapterfont}{\sffamily}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize\scshape\bfseries}

\renewcommand{\ABNTEXpartfont}{\ABNTEXchapterfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\ABNTEXchapterfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize\bfseries}

\renewcommand{\ABNTEXsubsectionfont}{\ABNTEXsectionfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\ABNTEXsubsectionfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize\itshape}

%\renewcommand{\ABNTEXsubsubsubsectionfont}{\ABNTEXsubsectionfont}
%\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

\renewcommand{\tocpartapendices}{
    \addtocontents{toc}{\cftsetindents{part}{\cftlastnumwidth}{2em}}
    \cftinserthook{toc}{A}
}

\renewcommand{\tocpartanexos}{
    \addtocontents{toc}{\cftsetindents{part}{\cftlastnumwidth}{2em}}
    \cftinserthook{toc}{A}
}

% ----------------------------------------------------------
% Fontes das entradas do sumario
% ----------------------------------------------------------
\renewcommand{\cftpartfont}{\bfseries\normalsize}
\renewcommand{\cftpartpagefont}{\bfseries\normalsize}

\renewcommand{\cftchapterfont}{\bfseries}
\renewcommand{\cftchapterpagefont}{\normalsize\cftchapterfont}

\renewcommand{\cftsectionfont}{\bfseries}
\renewcommand{\cftsectionpagefont}{\cftsectionfont}

\renewcommand{\cftsubsectionfont}{\normalsize}
\renewcommand{\cftsubsectionpagefont}{\cftsubsectionfont}

\renewcommand{\cftsubsubsectionfont}{\small}
\renewcommand{\cftsubsubsectionpagefont}{\cftsubsubsectionfont}

\renewcommand{\cftparagraphfont}{\footnotesize}
\renewcommand{\cftparagraphpagefont}{\cftparagraphfont}

% ----------------------------------------------------------
% Remover cabeçalho nas paginas pares
% ----------------------------------------------------------
\makepagestyle{parpage}
\makeevenhead{parpage}{\ABNTEXfontereduzida\thepage}{}{}
\makeoddhead{parpage}{}{}{\ABNTEXfontereduzida\thepage}

% ----------------------------------------------------------
% Configuração de espaçamento
% ----------------------------------------------------------
\setlength{\afterchapskip}{0.5cm}   % Espaço 1,5 após os capítulos
\setlength{\parindent}{2.0cm}       % Identação do paragrafo conforme norma para TCC IFSC
\setlength{\parskip}{0.1cm}         % Controle do espaçamento entre um parágrafo

% --------------------------------------------------------------------------
% Personalização do modelo da abnTeX2 para se adequar com o modelo do IFSC
% 2017-08-23 - Segue o modelo do IFSC publicado em setembro de 2016
% --------------------------------------------------------------------------

% ----------------------------------------------------------
% Alteração da capa
% ----------------------------------------------------------
\renewcommand{\imprimircapa}{
    \begin{capa}
        \begin{SingleSpacing}
            \center
            \ABNTEXchapterfont\bfseries\ INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE\\SANTA CATARINA - CÂMPUS FLORIANÓPOLIS\\DEPARTAMENTO ACADÊMICO DE ELETRÔNICA\\CURSO SUPERIOR DE ENGENHARIA ELETRÔNICA

            \vspace*{3.0cm}

            \ABNTEXchapterfont\bfseries\MakeUppercase\imprimirautor

            \begin{vplace}[0.5]
                \begin{center}
                    \ABNTEXchapterfont\SingleSpacing\bfseries\Large\MakeUppercase\imprimirtitulo
                \end{center}
            \end{vplace}

            \begin{center}
                \ABNTEXchapterfont\bfseries\imprimirlocal, \ABNTEXchapterfont\bfseries\imprimirdata
            \end{center}
        \end{SingleSpacing}
    \end{capa}
}

% ----------------------------------------------------------
% folha de rosto
% ----------------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}{
    \begin{SingleSpacing}
        \center
        \ABNTEXchapterfont\bfseries\ INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE\\SANTA CATARINA - CÂMPUS FLORIANÓPOLIS\\DEPARTAMENTO ACADÊMICO DE ELETRÔNICA\\CURSO SUPERIOR DE ENGENHARIA ELETRÔNICA

        \vspace*{3.0cm}     % três espaços simples - conforme norma para TCC do IFSC

        \ABNTEXchapterfont\bfseries\MakeUppercase\imprimirautor

        %\begin{vplace}[0.5]
        \vspace*{\fill}
            \begin{center}
                \ABNTEXchapterfont\SingleSpacing\bfseries\Large\MakeUppercase\imprimirtitulo
            \end{center}
        \vspace*{\fill}
        %\end{vplace}

        \hspace{.45\textwidth}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \normalfont\imprimirpreambulo
                \vspace*{1.0cm}

                \imprimirorientadorRotulo~Prof. Dr. \imprimirorientador\par

                \vspace*{1.0cm}
                	\@ifundefined{\imprimircoorientador}{}{
	                \imprimircoorientadorRotulo~Prof. Dr. \imprimircoorientador
                	}
            \end{SingleSpacing}
        \end{minipage}%
        \vspace*{\fill}

         \begin{center}
            \ABNTEXchapterfont\bfseries\imprimirlocal, \ABNTEXchapterfont\bfseries\imprimirdata
        \end{center}
    \end{SingleSpacing}
}
\makeatother


% ----------------------------------------------------------
% Configurações de aparência do PDF final
% ----------------------------------------------------------
\definecolor{blue}{RGB}{41,5,195}   % alterando o aspecto da cor azul

\makeatletter
\hypersetup{                        % informações do PDF
   	%pagebackref=true,
	pdftitle={\@title},
	pdfauthor={\@author},
   	pdfsubject={\imprimirpreambulo},
	pdfkeywords={Palavra chave 1}{Palavra chave 2}{Palavra chave 3},
	colorlinks=true,       		% false: boxed links; true: colored links
   	linkcolor=black,          	% color of internal links
   	citecolor=black,        	% color of links to bibliography
   	filecolor=black,      		% color of file links
	urlcolor=black,
	bookmarksdepth=4
}
\makeatother

% ----------------------------------------------------------
% compila o indice
% ----------------------------------------------------------
\makeindex

% --------------------------------------------------------------------------
% Configurações para inserir código fonte de programas - pacote listings
% --------------------------------------------------------------------------

\renewcommand{\lstlistingname}{Código} % Altera o nome padrão do rótulo usado no comando \autoref{}
\renewcommand{\lstlistlistingname}{Lista de códigos} % Altera o rótulo a ser usando no elemento pré-textual

% ----------------------------------------------------------
% Configura a "Lista de Códigos" conforme as regras da ABNT
% ----------------------------------------------------------
\begingroup\makeatletter
\let\newcounter\@gobble\let\setcounter\@gobbletwo
  \globaldefs\@ne \let\c@loldepth\@ne
  \newlistof{listings}{lol}{\lstlistlistingname}
  \newlistentry{lstlisting}{lol}{0}
\endgroup

\renewcommand{\cftlstlistingaftersnum}{\hfill--\hfill}

\let\oldlstlistoflistings\lstlistoflistings
\renewcommand{\lstlistoflistings}{
   \begingroup
   \let\oldnumberline\numberline
   \renewcommand{\numberline}{\lstlistingname\space\oldnumberline}
   \oldlstlistoflistings
   \endgroup
}

% ----------------------------------------------------------
% Definindo cores
% ----------------------------------------------------------
\definecolor{hellgelb}{rgb}{1,1,0.9}
\definecolor{colKeys}{rgb}{0,0,0}
\definecolor{colIdentifier}{rgb}{0,0,0.9}
\definecolor{colComments}{rgb}{.4,.4,.4}
\definecolor{colString}{rgb}{0,0,0.6}

\definecolor{colBack}{rgb}{1,1,.98}
\definecolor{colKeys}{rgb}{0,0,0}
\definecolor{colIdentifier}{rgb}{0,0,0.9}
\definecolor{colComments}{rgb}{.4,.4,.4}
\definecolor{colString}{rgb}{0,0,0.6}

\lstset{ %
    aboveskip=\bigskipamount,
    backgroundcolor=\color{colBack},   % choose the background color; you must add \usepackage{color} or
    basicstyle=\ttfamily\footnotesize,       % the size of the fonts that are used for the code
    breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
    breaklines=true,                 % sets automatic line breaking
    captionpos=n,                    % sets the caption-position to bottom
    columns=flexible,
    commentstyle=\color{colComments},    % comment style
    deletekeywords={...},            % if you want to delete keywords from the given language
    escapechar={@*},          % if you want to add LaTeX within your code
    extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
    linewidth=0.98\linewidth,
    tab=$\to$,
    float=tbph,
    xleftmargin=10pt,
    frame=single,	                   % adds a frame around the code
    keepspaces=true,                % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
    identifierstyle=\color{colIdentifier},
    keywordstyle=\color{colKeys},       % keyword style
    %  otherkeywords={*,...},            % if you want to add more keywords to the set
    firstnumber=last,
    numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
    numbersep=5pt,                   % how far the line-numbers are from the code
    numberstyle=\tiny,
    rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
    showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
    showstringspaces=false,          % underline spaces within strings only
    showtabs=false,                  % show tabs within strings adding particular underscores
    %   stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
    stringstyle=\color{colString},     % string literal style
    tabsize=2,	                   % sets default tabsize to 2 spaces
    title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

% ----------------------------------------------------------
% Permitindo caracteres acentuados dentro do ambiente lstlisting
% ----------------------------------------------------------
\lstset{%
	inputencoding=utf8,
	extendedchars=true,
	literate=%
	{é}{{\'{e}}}1
	{è}{{\`{e}}}1
	{ê}{{\^{e}}}1
	{ë}{{\¨{e}}}1
	{É}{{\'{E}}}1
	{Ê}{{\^{E}}}1
	{û}{{\^{u}}}1
	{ù}{{\`{u}}}1
	{â}{{\^{a}}}1
	{à}{{\`{a}}}1
	{á}{{\'{a}}}1
	{ã}{{\~{a}}}1
	{Á}{{\'{A}}}1
	{Â}{{\^{A}}}1
	{Ã}{{\~{A}}}1
	{ç}{{\c{c}}}1
	{Ç}{{\c{C}}}1
	{õ}{{\~{o}}}1
	{ó}{{\'{o}}}1
	{ú}{{\'{u}}}1
	{Ú}{{\'{U}}}1
	{ô}{{\^{o}}}1
	{Õ}{{\~{O}}}1
	{Ó}{{\'{O}}}1
	{Ô}{{\^{O}}}1
	{î}{{\^{i}}}1
	{Î}{{\^{I}}}1
	{í}{{\'{i}}}1
	{Í}{{\~{Í}}}1
}

% ----------------------------------------------------------
% Criando comandos para algumas linguagens de programação
% ----------------------------------------------------------
\lstdefinestyle{shell}{language=csh,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{shellp}{language=csh,basicstyle=\ttfamily\scriptsize}
\lstdefinestyle{php}{language=php,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{phpp}{language=php,basicstyle=\ttfamily\scriptsize}
\lstdefinestyle{ansic}{language=c,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{ansicp}{language=c,basicstyle=\ttfamily\scriptsize}
\lstdefinestyle{java}{language=java,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{javap}{language=java,basicstyle=\ttfamily\scriptsize}
\lstdefinestyle{matlab}{language=matlab,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{matlabp}{language=matlab,basicstyle=\ttfamily\scriptsize}
\lstdefinestyle{python}{language=python,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{pythonp}{language=python,basicstyle=\ttfamily\scriptsize}
\lstdefinestyle{xml}{language=xml,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{xmlp}{language=xml,basicstyle=\ttfamily\scriptsize}
\lstdefinestyle{sql}{language=sql,basicstyle=\ttfamily\footnotesize}
\lstdefinestyle{sqlp}{language=sql,basicstyle=\ttfamily\scriptsize}

\newcommand{\ansic}{\lstset{style=ansic}}
\newcommand{\ansicp}{\lstset{style=ansicp}}
\newcommand{\java}{\lstset{style=java}}
\newcommand{\javap}{\lstset{style=javap}}
\newcommand{\sql}{\lstset{style=sql}}
\newcommand{\sqlp}{\lstset{style=sqlp}}
\newcommand{\xml}{\lstset{style=xml}}
\newcommand{\xmlp}{\lstset{style=xmlp}}
\newcommand{\python}{\lstset{style=python}}
\newcommand{\pythonp}{\lstset{style=pythonp}}
\newcommand{\csh}{\lstset{style=shell}}
\newcommand{\cshp}{\lstset{style=shellp}}
\newcommand{\shell}{\lstset{style=shell}}
\newcommand{\shellp}{\lstset{style=shellp}}
