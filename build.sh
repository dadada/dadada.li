#!/bin/sh

find . -iname "*.md" -type f -exec sh -c 'pandoc -s -f commonmark -t html --template=src/template.html -o "${0%.md}.html" "${0}"' {} \;
