@echo off
title mutCLI (b7)
echo Welcome to mutCLI!
echo Type "help" for help!
:a
set /P a="mutCLI>"
if /I "%a%" EQU "help" goto b
if /I "%a%" EQU "exit" exit
if /I "%a%" EQU "tools" goto d
if /I "%a%" EQU "notes" goto c
if /I "%a%" EQU "cmd" goto e
echo Command not found or you typed nothing
goto a

:b
echo Type "notes" to see patch notes
echo Type "tools" for system tools
echo Type "cmd" to open cmd
echo Type "exit" to exit
echo Expect more from the later releases
goto a

:c
more notes.txt
goto a

:d
scripts\tools.bat

:e
scripts\cmd.exe
goto a
