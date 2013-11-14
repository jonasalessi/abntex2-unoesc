# Manual de Instalação para o LaTex Unoesc

Este repositório contém o modelo e o manual para instalação e utilização do LaTeX para os trabalhos de conclusão de curso de Engenharia de Computação da Universidade do Oeste de Santa Catarina (Unoesc).

# Instalação do LaTeX

1. Instalação dos pacotes do **texlive** na versão 2012 ou superior;

> sudo add-apt-repository ppa:texlive-backports/ppa
> sudo apt-get update
> sudo apt-get install texlive

2. Caso você já possua os texlive instalado em versões anterioes é possível  atualizá-lo;

> sudo apt-get upgrade

3. Depois de possuir os pacotes principais instalados é necessária a instalação dos pacotes adicionais;

*Ubuntu*
> sudo apt-get install texlive-full
> sudo apt-get install texlive-latex-extra

*Fedora*
> sudo yum install texlive tex-babel-portuges texlive-lipsum texlive-lastpage 

*Windows*
> http://tug.org/texlive/quickinstall.html
> http://tug.org/texlive/windows.html
> http://tug.org/texlive/doc/texlive-en/texlive-en.html#installation

4. Realize o download do modelo da Unoesc. Neste modelo já está incluso o pacote da abntex2;

5. Escreva seu trabalho.
