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
    sudo apt-get install texlive

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

> [Guia rápido de instalação](http://tug.org/texlive/quickinstall.html)

> [Detalhes da instalação e solução de problemas](http://tug.org/texlive/windows.html)

> [Guia completo de instalação](http://tug.org/texlive/doc/texlive-en/texlive-en.html#installation)


4 - Realize o download do modelo da Unoesc. Neste modelo já está incluso o pacote da abntex2;

5 - Escreva seu trabalho.
