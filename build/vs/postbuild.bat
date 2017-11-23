set OUTDIR=%1

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\graphics %OUTDIR%\graphics

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\settings %OUTDIR%\settings

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\languages %OUTDIR%\languages

robocopy /NP /NFL /NDL /s ..\..\CastleDoctrine\gameSource\gameElements %OUTDIR%\gameElements

robocopy ..\..\CastleDoctrine\gameSource %OUTDIR% language.txt

if exist %OUTDIR%\settings\downloadCode.ini.user (
	copy downloadCode.ini.user "%OUTDIR%\settings"
) else (
	robocopy /np . %OUTDIR%\settings downloadCode.ini
)

if exist %OUTDIR%\settings\email.ini.user (
	copy email.ini.user "%OUTDIR%\settings"
) else (
	robocopy /np . %OUTDIR%\settings email.ini
)

robocopy /np ..\..\sdl\VisualC\Debug %OUTDIR% sdl.dll

robocopy /np ..\..\sdl\VisualC\Debug %OUTDIR% sdl.pdb
