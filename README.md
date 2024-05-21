# geeko-brickz
A 3d printable model of brick-made geeko made in [LeoCAD](https://www.leocad.org/)
A remix of the original set 30477.

![Screenshot](https://github.com/lkocman/geeko-brickz/blob/main/screenshot.png?raw=true)

## Instructions

$ sudo zypper in leocad
[Instructions](https://github.com/lkocman/geeko-brickz/blob/main/instructions.pdf) were generated directly from [LeoCAD](https://www.leocad.org/).


## STL

There is [stl.tar.xz](https://github.com/lkocman/geeko-brickz/blob/main/stl.tar.xz) containing all pieces. Alternatively [plate.stl](https://github.com/lkocman/geeko-brickz/blob/main/plate.stl) file is an export of plate containing all required pieces in [Prusa Slicer](https://flathub.org/apps/com.prusa3d.PrusaSlicer).

The stl.tar.xz archive can be generated as follows.

```
$ git clone git@github.com:kristov/ldraw2stl.git
$ git clone git@github.com:lkocman/geeko-brickz.git
$ cd geeko-brickz
# Following will download complete.zip from ldraw library and match files from manually maintained [partnums.txt](https://github.com/lkocman/geeko-brickz/blob/main/partnums.txt)
$ ./convert.sh 
$ ls stl/ # these are the files you want to import to e.g. slicer
$ tar -cvf stl.tar.xz stl
```

## 3d printing bricks

I do not have a usable gcode yet. Any contribution is welcome!
For now import files from [stl.tar.xz](https://github.com/lkocman/geeko-brickz/blob/main/stl.tar.xz ) into e.g. [Prusa Slicer](https://flathub.org/apps/com.prusa3d.PrusaSlicer). You'll have to play with supports on individual parts.


## What to contribute?

See [our issues](https://github.com/lkocman/geeko-brickz/issues])
Improvements to model, to make it more aligned with the [geeko mascot](https://github.com/openSUSE/artwork/blob/master/logos/official/geeko-color.svg).
Specifically tail and head.

And the most wanted at the moment is the GCODE!!!


