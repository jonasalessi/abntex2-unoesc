%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para o Curso de Engenharia da computação da UNOESC
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Jonas Alessi, alessi.jonas@gmail.com
%% 
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntUnoesc}[10/07/2013 Modelo da UNOESC baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}
%---------------------------------------------------------------------------------

%-------
% informações do PDF
%-------
\makeatletter
\hypersetup{
    pdftitle={\@title}, 
    pdfauthor={\@author},
    pdfsubject={\imprimirpreambulo},
    pdfcreator={TexMaker},
    pdfkeywords={abnt}{latex}{abntex}{abntex2}{trabalho acadêmico}{unoesc}, 
    colorlinks=true,          % false: boxed links; true: colored links
    linkcolor=black,              % color of internal links
    citecolor=black,            % color of links to bibliography
    bookmarksdepth=4
}
\makeatother
%-------
% Capa
%-------
\makeatletter
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    {\ABNTEXchapterfont\large \imprimirinstituicao}
    
    \vspace*{1cm}
    
    {\ABNTEXchapterfont\large\imprimirautor}

    \vspace*{\fill}
    {\ABNTEXchapterfont\Large\imprimirtitulo}
    \vspace*{\fill}
    
    {\large\imprimirlocal}
    \par
    {\large\imprimirdata}
    
    \vspace*{1cm}
  \end{capa}
}

%-----
%Folha de rosto
%-----
\renewcommand{\imprimirfolhaderosto}{
   \begin{center}

%\vspace*{1cm}
{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}
{\ABNTEXchapterfont\Large\imprimirtitulo}
\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
\hspace{.45\textwidth}
\begin{minipage}{.5\textwidth}
  \begin{SingleSpace}
     \imprimirpreambulo
  \end{SingleSpace}
\end{minipage}%
\vspace*{\fill}
}%

{ 
\begin{flushleft} 
  \begin{SingleSpace}
   \large\imprimirorientadorRotulo~\imprimirorientador\par
   \abntex@ifnotempty{\imprimircoorientador}{
       {
         \large\imprimircoorientadorRotulo~\imprimircoorientador
       }
   }
    \end{SingleSpace}
\end{flushleft}
 }
\vspace*{\fill}

{\large\imprimirlocal}
\par
{\large\imprimirdata}
\vspace*{1cm}

\end{center}
}


%------
%Folha de aprovacão
%------
\renewcommand{\ABNTEXsign}[1]{%
\parbox[t]{15cm}{\SingleSpacing\vspace*{\ABNTEXsignskip}%
\rule{15cm}{0.1pt}
\nopagebreak #1\par}
}


%---------
%Sumario
%regras da ABNT NBR 6027:2012
\setlength\cftchapternumwidth{\cftparagraphnumwidth}
\setlength\cftpartnumwidth{\cftparagraphnumwidth}
\setlength\cftsubsectionnumwidth{\cftparagraphnumwidth}
\setlength\cftsectionnumwidth{\cftparagraphnumwidth}
\setlength\cftsubsubsectionnumwidth{\cftparagraphnumwidth}
\setlength\cftsubsubsectionindent{0pt}
\setlength\cftsubsectionindent{0pt}
\setlength\cftsectionindent{0pt}
\renewcommand*{\cftsubsectionfont}{\bfseries}

% REFERENCIA 
 \renewcommand{\bibsection}{%
   \chapter*{\bibname}
   \bibmark
   \ifnobibintoc\else
     \phantomsection
     \addcontentsline{toc}{chapter}{\indent
    % \hspace{\cftparagraphnumwidth} alinha a direita
     {\uppercase{\bibname}}
     }
   \fi
   \prebibhook}

%Fonte (xx) e baselineskip (xx)
\renewcommand{\ABNTEXchapterfontsize}{\fontsize{12}{12}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\fontsize{12}{12}\selectfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\fontsize{12}{12}\selectfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\fontsize{12}{12}\selectfont}
% ---
% Resumo e abstracts
\renewenvironment{resumo}[1][\resumoname]{%
\PRIVATEbookmarkthis{#1}
\renewcommand{\abstractnamefont}{\chaptitlefont}
\renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
\begin{abstract}
\OnehalfSpacing
}{\end{abstract}\PRIVATEclearpageifneeded}

\renewenvironment{resumoumacoluna}[1][\resumoname]{%
\PRIVATEbookmarkthis{#1}
\renewcommand{\abstractnamefont}{\chaptitlefont}
\renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
\begin{onecolabstract}
\OnehalfSpacing
}{\end{onecolabstract}\PRIVATEclearpageifneeded}
%% remover a fonte sffamily
\renewcommand{\ABNTEXchapterfont}{\bfseries}

 % tamanhos de fontes de section, subsection e subsubsection
\setsecheadstyle{\ABNTEXsectionfontsize\ABNTEXsectionupperifneeded}
\setsubsecheadstyle{\ABNTEXsubsectionfont\ABNTEXsubsectionfontsize\ABNTEXsubsectionupperifneeded\bfseries}
\setsubsubsecheadstyle{\ABNTEXsubsubsectionfontsize}

\makeatother
