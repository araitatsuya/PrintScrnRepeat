# PrintScrnRepeat
Repeating Print Screen of the window in the interval that you also specified. 

1. Please download screenCapture.bat and store in the same directory. 
https://github.com/npocmaka/batch.scripts/blob/master/hybrids/.net/c/screenCapture.bat

2. Double click PrintScrnRepeat.bat
3. Type in "Sleep time in sec?: "
4. Type in "Window Name?: "
The window name would be found in Windows Task Manager -> Applications tab -> Task.
Only a first couple of letters are needed. (e.g. MATLAB R -> MAT)
5. Sleep method might not be the most sophisticated way. It gives off fake pings to a local host 127.0.0.1 to waste some time. 

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



      UT Southwestern Tatsuya J. Arai
            July 22nd 2016
