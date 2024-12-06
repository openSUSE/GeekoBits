# GeekoBits
A 3d printable model of brick-made openSUSE mascot geeko done in [LeoCAD](https://www.leocad.org/) from a
[LDraw gallery](https://www.ldraw.org/). 

Currently based on a custom model SUSE Linux s.r.o. purchased from Mr. Menzl / kostkyvplzni.
The original color on the picture is “Lime” . I did use “Bright Green” in LeoCAD

See the project at [printables.com](https://www.printables.com/model/1098992-opensuse-logo-inspired-chameleon-from-ldraw-blocks)

![GeekoBits](https://github.com/user-attachments/assets/3cf05b42-237e-4853-9976-284ea46f6f82)
![Screenshot](https://github.com/openSUSE/GeekoBits/blob/main/screenshot.png?raw=true)

## Instructions


### on openSUSE

$ sudo zypper in leocad
[Instructions](https://github.com/openSUSE/GeekoBits/blob/main/instructions.pdf) were generated directly from [LeoCAD](https://www.leocad.org/).

### Flathub

$ flatpak --user install org.leocad.LeoCAD

### Using LDraw's complete library

Make sure that you've added [LDraw's complete.zip](http://www.ldraw.org/library/updates/complete.zip) to your [LeoCAD library](https://www.leocad.org/docs/library.html).
Aside from setting LEOCAD_LIB variable, you can do that in preferences too.

## 3D Printable files

The stl parts are published at https://www.printables.com/model/1098992-opensuse-logo-inspired-chameleon-from-ldraw-blocks

The archive containing all parts can be generated locally from the LeoCAD model by running following.
```
$ zypper in git wget unzip
$ git clone git@github.com:openSUSE/GeekoBits.git
$ cd geeko-bits
$ ./make_archive.sh
```

## What to contribute?

We do not have a directly printable "STL" with all pieces yet.
We'll be also happy for publishing your makes at contributing back your changes at [printables.com](https://www.printables.com/model/1098992-opensuse-logo-inspired-chameleon-from-ldraw-blocks).

See [our issues](https://github.com/openSUSE/GeekoBits/issues)
Improvements to model, to make it more aligned with the [geeko mascot](https://github.com/openSUSE/artwork/blob/master/logos/official/geeko-color.svg) are also welcome.


## License and Attribution

The GeekoBits chameleon model and the LDRAW.org model parts (not part of this git repo) are licensed with [CC BY 2.0 Attribution](https://creativecommons.org/licenses/by/2.0/deed.en).
The make_archive.sh script is licensed under MIT.

Many thanks to kristov for his https://github.com/kristov/ldraw2stl which we're using to generate parts from stl.
