@echo off
:: developer tool, allows to easily update S1Chat folder for all users (users = paths leading to destinations specified in users.txt)
:a
set /p user="enter user to recieve update (enter "all" to update for all specified users in users.txt): "
if %user%== all ( goto all )
robocopy \\server1\userA\S1Chat \\server1\%user%\S1Chat
goto a
:all
for /F "tokens=*" %%A in ( \\server1\userA\S1Chat ) do robocopy \\server1\userA\S1Chat \\server1\%%A\S1Chat
goto a