#!/bin/bash

# Get https://github.com/kristov/ldraw2stl

export PATH=../ldraw2stl/bin:$PATH


if [ ! -e "complete.zip" ]; then
    wget http://www.ldraw.org/library/updates/complete.zip
    unzip complete.zip
fi

# cleanup before making the archive
rm -rf stl stl.tar.xz
mkdir -p stl

counter=0 # let's prefix partnums with incremental number to avoid dupes
for partnum in `grep "\.dat" model.ldr | awk '{ printf "%s ", $NF}' | tr --delete '\n' | tr --delete '\r'`; do
    ((counter++)) # let's start from 1
    echo "Copying $partnum into stl/$counter-$partnum.stl"
    echo dat2stl --file ldraw/parts/$partnum --ldrawdir ./ldraw > stl/$counter-$partnum.stl
done

echo "Compressing stl.tar.xz"
tar -cJf stl.tar.xz stl
