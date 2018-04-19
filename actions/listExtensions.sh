#!/bin/bash

##########
#Count files by type within folder
##########

shopt -s globstar nullglob
declare -A exts

for f in * **/*; do
    [[ -f $f ]] || continue     # only count files
    filename=${f##*/}           # remove directories from pathname
    ext=${filename##*.}
    [[ $filename == $ext ]] && ext="no_extension"
    : ${exts[$ext]=0}           # initialize array element if unset
    (( exts[$ext]++ ))
done

for ext in "${!exts[@]}"; do
    echo "$ext ${exts[$ext]}"
done | sort -k2nr | column -t


