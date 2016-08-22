@echo off
color 0A
set /p SLEEP_TIME= "Sleep time in sec?: "
set /p WINDOW_NAME= "Window Name?: "

:repeat_printscn
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set myhour=%%a)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set myminute=%%b)
for /f "tokens=1-2 delims= " %%a in ("%mytime%") do (set mytime=%%a%%b)

REM if %myhour% EQU 9 (set mytime = 9%myminute%) 
REM if %myhour% EQU 8 (set mytime = 8%myminute%) 
REM if %myhour% EQU 7 (set mytime = 7%myminute%) 
REM if %myhour% EQU 6 (set mytime = 6%myminute%) 
REM if %myhour% EQU 5 (set mytime = 5%myminute%) 
REM if %myhour% EQU 4 (set mytime = 4%myminute%) 
REM if %myhour% EQU 3 (set mytime = 3%myminute%) 
REM if %myhour% EQU 2 (set mytime = 2%myminute%) 
REM if %myhour% EQU 1 (set mytime = 1%myminute%) 

echo %mydate%_%mytime% 
call screenCapture %mydate%_%mytime%.tiff "%WINDOW_NAME%"
ping 127.0.0.1 -n %SLEEP_TIME% > nul
goto repeat_printscn

REM UT Southwestern Tatsuya J. Arai, 07222016
REM
REM Citation
REM  - screenCapture
REM npocmaka
REM http://superuser.com/questions/75614/take-a-screen-shot-from-command-line-in-windows
REM https://github.com/npocmaka/batch.scripts/blob/master/hybrids/.net/c/screenCapture.bat
REM Please download screenCapture.bat and store in the same directory. 
REM
REM  - Sleep
REM Martin, compie
REM http://stackoverflow.com/questions/1672338/how-to-sleep-for-5-seconds-in-windowss-command-prompt-or-dos

