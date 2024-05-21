#!/bin/bash

# Get https://github.com/kristov/ldraw2stl

export PATH=../ldraw2stl/bin:$PATH

mkdir -p stl

if [ ! -e "complete.zip" ]; then
    wget http://www.ldraw.org/library/updates/complete.zip
    unzip complete.zip
fi

counter=0 # let's prefix partnums with incremental number to avoid dupes
for partnum in `grep dat partnums.txt`; do
    ((counter++)) # let's start from 1
    dat2stl --file ldraw/parts/$partnum --ldrawdir ./ldraw > stl/$counter-$partnum.stl
done
