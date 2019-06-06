@echo off

rem echo -------- %3 Build Details -------- 

del "Logs\%2" >nul 2>&1
"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE" /MAKE %3 /outdir %4 /out "Logs\%2"
more "Logs\%2"
rem echo  
echo           %3

