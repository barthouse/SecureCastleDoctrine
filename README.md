# SecureCastleDoctrine

This project will prototype a version of CastleDoctrine which restricts the house state observable on
the game client to only that state that can be seen.

What follows are some notes on building CastleDoctrine on Windows.

Download minGW-get-setup.exe from
https://sourceforge.net/projects/mingw/files/Installer/

minGW install instructions
http://www.mingw.org/wiki/Getting_Started

1. Launch minGW-get-setup.exe
2. Click Install
3. Install packages mingw-developer-tool, mingw32-base, mingw32-gcc-g++ and msys-base

Download SDL from
http://www.libsdl.org/download-1.2.php

SDL install instructions
http://www.netadelica.com/coding/sdl/install.html

Run msys shell
c:\MinGW\msys\1.0\msys.bat

Within the msys shell build project using command:
CastleDoctrine/build/source/runToBuild

minorGems source at 
https://sourceforge.net/p/minorgems/minorGems/ci/default/tree/


Castle Doctrine source at
https://sourceforge.net/p/hcsoftware/CastleDoctrine/ci/default/tree/
