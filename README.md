 Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para o Curso de Engenharia de Computação da Universidade do Oeste de Santa Catarina ([Unoesc](www.unoesc.edu.br)).

 This work may be distributed and/or modified under the
 conditions of the LaTeX Project Public License, either version 1.3
 of this license or (at your option) any later version.
 The latest version of this license is in
 http://www.latex-project.org/lppl.txt
 and version 1.3 or later is part of all distributions of LaTeX
 version 2005/12/01 or later.

 This work has the LPPL maintenance status `maintained'.
 
  The Current Maintainer of this work is Jonas Alessi, alessi.jonas@gmail.com

 Further information about abnTeX2 are available on http://abntex2.googlecode.com/
 
# Manual LaTex Unoesc
----

Este repositório contém o modelo e o manual para instalação e utilização do LaTeX para os trabalhos de conclusão de curso de Engenharia de Computação da Universidade do Oeste de Santa Catarina ([Unoesc](www.unoesc.edu.br)).


## Instalação do LaTeX
----

1 - Instalação dos pacotes do **texlive** na versão 2012 ou superior;

**Ubuntu 13.04 ou superiores**

    sudo apt-get install texlive-full
    
**Ubuntu 12**

    sudo add-apt-repository ppa:texlive-backports/ppa
    sudo apt-get update
    sudo apt-get install texlive texlive-latex-extra

**Fedora**

    yum install textlive -y


2 - Caso você já possua os texlive instalado em versões anterioes é possível  atualizá-lo;


**Ubuntu**

    sudo apt-get upgrade
         
**Fedora**

    sudo yum update -y


3 - Depois de possuir os pacotes principais instalados é necessária a instalação dos pacotes adicionais;

**Ubuntu**

    sudo apt-get install texlive-latex-extra

**Fedora**

    sudo yum install tex-babel-portuges texlive-lipsum texlive-lastpage

**Windows**

> [Download](http://miktex.org/download)

> [Guia de instalação](http://docs.miktex.org/2.9/manual/installing.html)

4 - Realize o download do modelo da Unoesc. Neste modelo já está incluso o pacote da abntex2;

 > [Modelo 2.0](https://github.com/jonasalessi/Model_LaTeX_Unoesc/archive/TAG.2.0.zip)
 
5 - Escreva seu trabalho.

