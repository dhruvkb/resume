#!/bin/bash

xelatex -interaction=nonstopmode -halt-on-error -jobname=cover  main.tex
xelatex -interaction=nonstopmode -halt-on-error -jobname=resume main.tex

if [[ -d "dist" ]]; then
    rm -rf dist/
fi
mkdir dist/

cp public/index.html dist/
cp cover.pdf  dist/
rm cover.*
cp resume.pdf dist/
rm resume.*