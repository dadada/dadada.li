#!/bin/sh

find src -type d -exec sh -c 'srcpath="$(realpath ${0})"; outpath=$(realpath "build${0#src}"); echo "src=$srcpath; dst=$outpath"; mkdir -p "$outpath" && cd "$srcpath" && pandoc -d "${srcpath}/defaults.pandoc" -o "${outpath}/index.html" ' {} \;

