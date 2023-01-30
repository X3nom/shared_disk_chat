@echo off
:: developer tool, allows to easily update S1Chat folder for all users (users = paths leading to destinations specified in users.txt)
set ADMIN_S1CHAT="\\server1\userA\S1Chat"
:a
set /p user="enter user to recieve update (enter "all" to update for all specified users in users.txt): "
if %user%== all ( goto all )
robocopy %ADMIN_S1CHAT% \\server1\%user%\S1Chat
goto a
:all
for /F "tokens=*" %%A in ( %ADMIN_S1CHAT% ) do robocopy %ADMIN_S1CHAT% \\server1\%%A\S1Chat
goto a