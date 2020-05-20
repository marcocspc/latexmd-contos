#!/bin/bash

FILENAME=conto

pdflatex --shell-escape "$FILENAME.tex" 
for arg in "$@"; do
    if [[ "$arg" == "--no-rm" ]] ; then
        no_rm=1
    fi
done
if ! [ -n "$no_rm" ]; then 
    rm "$FILENAME.aux"
    rm "$FILENAME.log"
    rm -rf *markdown*
fi
open "$FILENAME.pdf"
