# geeko-brickz
A 3d printable model of brick-made geeko made in [LeoCAD](https://www.leocad.org/)
A remix of the original set 30477.

Assembly instructions generated from LeoCAD can be found [here](https://github.com/lkocman/geeko-brickz/blob/main/instructions.pdf)

![Screenshot](https://github.com/lkocman/geeko-brickz/blob/main/screenshot.png?raw=true)

## STL

The plate.stl file is an export of plate in slicer containing all required pieces (see partnums.txt) as presented in instrucions.pdf
You can export them individually by running following.

```
$ git clone git@github.com:kristov/ldraw2stl.git
$ git clone git@github.com:lkocman/geeko-brickz.git
$ cd geeko-brickz
$ ./convert.sh
$ ls stl/
```


## gcode

I do not have a usable gcode yet. Any contribution is welcome!
For now import plate.stl and 


