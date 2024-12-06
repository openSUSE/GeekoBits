#/bin/bash

# License: MIT

# For accessing files from git checkout
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Ensure required tools are installed
REQUIRED_TOOLS=("git" "unzip" "wget")
for tool in "${REQUIRED_TOOLS[@]}"; do
    if ! command -v "$tool" &>/dev/null; then
        echo "$tool is required but not installed."
        echo "Please run: sudo zypper in ${REQUIRED_TOOLS[*]}"
        exit 1
    fi
done

if [ ! -d "$SCRIPT_DIR/ldraw2stl" ]; then
	pushd $SCRIPT_DIR
	git clone https://github.com/kristov/ldraw2stl
	popd
fi

export PATH=$SCRIPT_DIR/ldraw2stl/bin:$PATH

if [ ! -e "complete.zip" ]; then
    wget http://www.ldraw.org/library/updates/complete.zip
fi
rm -rf ldraw
unzip complete.zip

# cleanup before making the archive
TGDIR="GeekoBits_stls"
rm -rf $TGDIR $TGDIR.ZIP
mkdir -p $TGDIR

# Some parts are used multiple times, let's make sure that archive contains as many copies as we need
counter=0 
for partnum in `grep "\.dat" model.ldr | awk '{ printf "%s ", $NF}' | tr --delete '\n' | tr --delete '\r'`; do
    ((counter++)) # let's start from 1
    echo "Copying part $partnum from ldraw's gallery into $TGDIR/$counter-$partnum.stl"
    dat2stl --file ldraw/parts/$partnum --ldrawdir ./ldraw > $TGDIR/$counter-$partnum.stl
done

echo "Compressing $TGDIR.tar.xz"
zip -r $TGDIR.zip $TGDIR

echo "Happy printing!"
echo "$TGDIR.zip contains all blocks needed to make the build happen"
