# geeko-brickz
A 3d printable model of brick-made geeko made in [LeoCAD](https://www.leocad.org/)
A remix of the original set 30477.

![Screenshot](https://github.com/lkocman/geeko-brickz/blob/main/screenshot.png?raw=true)

## Instructions

$ sudo zypper in leocad
[Instructions](https://github.com/lkocman/geeko-brickz/blob/main/instructions.pdf) were generated directly from [LeoCAD](https://www.leocad.org/).


## STL

The [plate.stl](https://github.com/lkocman/geeko-brickz/blob/main/plate.stl) file is an export of plate containing all required pieces in [Prusa Slicer](https://flathub.org/apps/com.prusa3d.PrusaSlicer).
You can export them individually by running following. 

**The convert script processes manually maintained [partnums.txt](https://github.com/lkocman/geeko-brickz/blob/main/partnums.txt), not the model.ldr!** Please make sure to update partnums.txt with your changes from leocad.

```
$ git clone git@github.com:kristov/ldraw2stl.git
$ git clone git@github.com:lkocman/geeko-brickz.git
$ cd geeko-brickz
$ ./convert.sh
$ ls stl/ # these are the files you want to import to e.g. slicer
```

## 3d printing bricks

I do not have a usable gcode yet. Any contribution is welcome!
For now import [plate.stl](https://github.com/lkocman/geeko-brickz/blob/main/plate.stl) into e.g. [Prusa Slicer](https://flathub.org/apps/com.prusa3d.PrusaSlicer) you'll have to play with supports on individual parts.


## What to contribute?

Improvements to model, to make it more aligned with the [geeko mascot](https://github.com/openSUSE/artwork/blob/master/logos/official/geeko-color.svg).
Specifically tail and head.

And the most wanted at the moment is the GCODE!!!


