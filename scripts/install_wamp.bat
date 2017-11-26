@echo off
setlocal ENABLEEXTENSIONS
setlocal ENABLEDELAYEDEXPANSION

set elevated="no"
whoami /groups | find "S-1-16-12288" > nul && set elevated="yes"

if !elevated! == "no" (
	echo Must run install_wamp.bat from an elevated command prompt
	goto :EOF
)

powershell -ExecutionPolicy Unrestricted -File install_wamp.ps1

:EOF
