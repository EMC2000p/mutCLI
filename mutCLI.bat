@echo off
title mutCLI (b5)
echo Welcome to mutCLI!
echo Type "help" for help!
:a
set /P a="mutCLI>"
if /I "%a%" EQU "help" goto b
if /I "%a%" EQU "exit" exit
if /I "%a%" EQU "tools" goto d
echo Command not found or you typed nothing
goto a

:b
echo Type "tools" for system tools
echo Type "exit" to exit
echo Expect more from the later releases
goto a

:c


:d
scripts\tools.bat
