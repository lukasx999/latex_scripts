#!/usr/bin/env bash
set -euxo pipefail

file="main.tex"

mupdf main.pdf &
echo $file | entr -cn sh -c "pdflatex $file; pkill -HUP mupdf"
