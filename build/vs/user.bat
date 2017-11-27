@echo off
echo switching to user %1

for %%i in (email.ini downloadCode.ini) do (
	copy %%i.user.%1 %%i.user
	copy %%i.user.%1 bin\settings\%%i	
)
