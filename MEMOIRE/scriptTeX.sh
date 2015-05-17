#!/bin/bash
# Compilation sous Unix/Linux

pdflatex Main.tex
makeglossaries  Main
for i in *.aux
do
  if [ "$i" == "Main.aux" ] ;then
    continue;
  fi
  bibtex ${i%.*}
done
pdflatex Main.tex
pdflatex Main.tex
