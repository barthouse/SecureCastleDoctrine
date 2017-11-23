@echo off

if not "x%PROCESSOR_ARCHITECTURE%" == "xAMD64" goto _NotX64
set COMSPEC=%WINDIR%\SysWOW64\cmd.exe
echo running x86 %COMSPEC% /c %0 %1
%COMSPEC% /c %0 %1
goto EOF

:_NotX64

if not "x%MINGWDIR%" == "x" goto checksh

set MINGWDIR=c:\mingw\msys\1.0\bin\

:checksh

if NOT EXIST %MINGWDIR%sh.exe goto notfound

goto startsh

:notfound
echo sh.exe not found
echo Please check that MINGWDIR is set correctly
exit 1

:startsh

set ROOTDIR=%~dp0
start %MINGWDIR%sh --login -i %ROOTDIR%build\build.sh 3 %1
exit

:EOF
