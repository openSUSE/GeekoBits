# GeekoBits
A 3d printable model of brick-made openSUSE mascot geeko done in [LeoCAD](https://www.leocad.org/)
A remix of the original set 30477.

![Screenshot](https://github.com/openSUSE/GeekoBits/blob/main/screenshot.png?raw=true)

## Instructions

$ sudo zypper in leocad
[Instructions](https://github.com/openSUSE/GeekoBits/blob/main/instructions.pdf) were generated directly from [LeoCAD](https://www.leocad.org/).


## STL

There is [stl.tar.xz](https://github.com/openSUSE/GeekoBits/blob/main/stl.tar.xz) containing all pieces. Alternatively [plate.stl](https://github.com/openSUSE/GeekoBits/blob/main/plate.stl) file is an export of plate containing all required pieces in [Prusa Slicer](https://flathub.org/apps/com.prusa3d.PrusaSlicer).

Making stl.tar.xz archive with all used brick stls

```
$ git clone git@github.com:kristov/ldraw2stl.git
$ git clone git@github.com:openSUSE/GeekoBits.git
$ cd geeko-brickz
# Following will download complete.zip from the ldraw library and match files from the model.ldr
$ ./fetch_stls.sh
```

## 3d printing bricks

I do not have a usable gcode yet. Any contribution is welcome!
For now import files from [stl.tar.xz](https://github.com/openSUSE/GeekoBits/blob/main/stl.tar.xz ) into e.g. [Prusa Slicer](https://flathub.org/apps/com.prusa3d.PrusaSlicer). You'll have to play with supports on individual parts.


## What to contribute?

See [our issues](https://github.com/openSUSE/GeekoBits/issues)
Improvements to model, to make it more aligned with the [geeko mascot](https://github.com/openSUSE/artwork/blob/master/logos/official/geeko-color.svg).
Specifically tail and head.

And the most wanted at the moment is ready-to-print stl (including supports etc) or at least a GCODE.


