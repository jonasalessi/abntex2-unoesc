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
\ProvidesClass{customizacao}[10/07/2013 Modelo da UNOESC baseado em abnTeX2]

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
      pdfcreator={TexNaker},
    pdfkeywords={abnt}{latex}{abntex}{abntex2}{trabalho acadêmico}{tcc}{unoesc}, 
    colorlinks=true,          % false: boxed links; true: colored links
      linkcolor=black,              % color of internal links
     % citecolor=blue,            % color of links to bibliography
     % filecolor=magenta,        % color of file links
    %urlcolor=blue,
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
    {\ABNTEXchapterfont\bfseries\Large\imprimirtitulo}
    \vspace*{\fill}
    
    {\large\imprimirlocal}
    \par
    {\large\imprimirdata}
    
    \vspace*{1cm}
  \end{capa}
}
\makeatother

%-----
%Folha de rosto
%-----
\makeatletter
\renewcommand{\imprimirfolhaderosto}{
   \begin{center}

%\vspace*{1cm}
{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}
{\ABNTEXchapterfont\bfseries\Large\imprimirtitulo}
\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
\hspace{.45\textwidth}
\begin{minipage}{.5\textwidth}
\SingleSpacing
\imprimirpreambulo
\end{minipage}%
\vspace*{\fill}
}%

{ 
\begin{flushleft}
   \large\imprimirorientadorRotulo~\imprimirorientador\par
\end{flushleft}
 }

\abntex@ifnotempty{\imprimircoorientador}{%
        {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%
\vspace*{\fill}

{\large\imprimirlocal}
\par
{\large\imprimirdata}
\vspace*{1cm}

\end{center}
}
\makeatother

%------
%Folha de aprovacão
%------
\makeatletter
\renewcommand{\ABNTEXsign}[1]{%
\parbox[t]{15cm}{\SingleSpacing\vspace*{\ABNTEXsignskip}%
\rule{15cm}{0.1pt}\\
\nopagebreak #1\par}
}
\makeatother
%---------
%Sumario
%---------
\cftsetindents{chapter}{0.0em}{4.0em}
\cftsetindents{section}{0.0em}{4.0em}
\cftsetindents{subsection}{0.0em}{4.0em}
\cftsetindents{subsubsection}{0.0em}{4.0em}

% ---

