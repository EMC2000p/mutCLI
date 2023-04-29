@echo off
title systools (b6)
echo mutCLI-tools started!
echo Type help for help.

:a
set /P a="tools>"
if /I "%a%" EQU "help" goto b
if /I "%a%" EQU "shutdown" goto c
if /I "%a%" EQU "cancel" goto d
if /I "%a%" EQU "restart" goto e
if /I "%a%" EQU "logoff" goto f
if /I "%a%" EQU "return" goto g
if /I "%a%" EQU "exit" exit
echo Command not found or you typed nothing
goto a 

:b

echo shutdown - Shuts down the PC
echo cancel - Cancels shutdowns/restarts/logoffs
echo restart - Restarts the PC
echo logoff - Logs you off
echo exit - Exits this window
echo return - returns you to mutCLI
goto a

:c

shutdown -s -t 10
goto a

:d

shutdown -a
goto a

:e

shutdown -r -t 10
goto a

:f
scripts\subscripts\logoff.bat
goto a

:g

mutCLI.bat

