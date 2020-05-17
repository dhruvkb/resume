#!/bin/bash

xelatex -jobname=developer main.tex
xelatex -jobname=writer    main.tex

if [[ -d "dist" ]]; then
    rm -rf dist/
fi
mkdir dist/

cp public/index.html dist/
cp developer.pdf     dist/
rm developer.*
cp writer.pdf        dist/
rm writer.*