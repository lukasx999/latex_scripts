#!/usr/bin/env bash
set -euxo pipefail

file="main.tex"

pdflatex $file
mupdf main.pdf &
echo $file | entr -cn sh -c "clear; pdflatex $file; pkill -HUP mupdf"
