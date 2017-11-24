setlocal ENABLEEXTENSIONS
setlocal ENABLEDELAYEDEXPANSION
set OUTDIR=%1

if not "x%1" == "x" goto copyfiles

echo usage:postbuild OUTDIR
goto EOF

:copyfiles

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\graphics %OUTDIR%\graphics

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\settings %OUTDIR%\settings

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\languages %OUTDIR%\languages

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\gameElements %OUTDIR%\gameElements

robocopy ..\..\CastleDoctrine\gameSource %OUTDIR% language.txt

for %%i in (downloadCode email reflectorURL) do (
	if exist %%i.ini.user (
		set SRC=%%i.ini.user
		fc /L !SRC! %OUTDIR%\settings\%%i.ini > nul
		if ERRORLEVEL 1 (
			copy !SRC! %OUTDIR%\settings\%%i.ini
		)
	)
)

robocopy /np ..\..\sdl\VisualC\Debug %OUTDIR% sdl.dll

robocopy /np ..\..\sdl\VisualC\Debug %OUTDIR% sdl.pdb

:EOF