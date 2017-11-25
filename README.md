# SecureCastleDoctrine

## About

This project will prototype a version of CastleDoctrine which restricts the house state observable on
the game client to only that state that can be seen.

## Requirements

This prototype is being developed using the following development environment

	Windows 10 x64
	Visual Studio 2017
	WAMP

## Cloning

This repository uses submodules thus when you are cloning the repository you must do so recursively.

git clone --recursive https://github.com/barthouse/SecureCastleDoctrine.git

It is expected that you will use the branch SecureCastleDoctrine for both the minorGems and CastleDoctrine submodules.

cd minorGems
git checkout SecureCastleDoctrine
cd ..

cd CastleDoctrine
git checkout SecureCastleDoctrine
cd ..

## WAMP Installation

### Install MSVC runtime libraries


### 

WAMP is used to install and manage an Apache server and its installed PHP support

Download the latest WAMP release from:
https://sourceforge.net/projects/wampserver/files/latest/download

Launch wampserver3.1.0_x64.exe as an Administrator to Install.


## Building with Visual Studio 2017

Open the solution SDL\VisualC\SDL.sln, build the solution.
Open the solution build\vs\CastleDoctrine.sln, build the solution.


Building CastleDoctrine (the hard way)

What follows are some notes on building CastleDoctrine on Windows using MinGW

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

Installing PHP and MySQL

Office PHP site
http://php.net/manual/en/install.php

PHP on Windows
https://www.microsoft.com/web/platform/phponwindows.aspx
http://windows.php.net/download/

WAMP Server
https://sourceforge.net/projects/wampserver/files/latest/download

Change Apache port to 8080

Creating database
create database database-name ;

Setting mysql database password
alter user 'root'@'localhost' identified by 'password' ;

Follow CastleDoctring/server/HowToInstall.txt

Create ticket for test user

Create build\vs\downloadCode.ini.user with test user download code
Create build\vs\email.ini.user with test user email address
Create reflectorURL.ini.user with URL to game server URL (http://localhost:8080/reflector/server.php)

