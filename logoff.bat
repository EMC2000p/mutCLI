@echo off
title systools-logoff (b6)

:a
set /P a="WARNING!! This will instantly log you out of Windows and any unsaved work will be lost. Are you sure you want to continue?[Y/N]"
if /I "%a%" EQU "Y" shutdown -l
if /I "%a%" EQU "N" scripts\tools.bat
echo Command not found or you typed nothing
goto a 
