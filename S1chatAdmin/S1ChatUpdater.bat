@echo off
:: developer tool, allows to easily update S1Chat folder for all users (users = paths leading to destinations specified in users.txt)
<<<<<<< HEAD
:: MODIFY THIS        \/
set ALL_USERS_ROOT="\\server1\"
:: MODIFY THIS        /\

:a
set /p user="enter user to recieve update (enter "all" to update for all specified users in users.txt): "
if %user%== all ( goto all )
for /d /r %ALL_USERS_ROOT% %%a in (*) do if /i %%~nxa==%user% set user_path=%%a
robocopy ..\S1Chat %user_path%\S1Chat
goto a
:all
for /F "tokens=*" %%A in ( .\users.txt ) do for /d /r %ALL_USERS_ROOT% %%b in (*) do if /i %%~nxb==%%A ( robocopy ..\S1Chat %%b\S1Chat )
=======
set ADMIN_S1CHAT="\\server1\userA\S1Chat"
:a
set /p user="enter user to recieve update (enter "all" to update for all specified users in users.txt): "
if %user%== all ( goto all )
robocopy %ADMIN_S1CHAT% \\server1\%user%\S1Chat
goto a
:all
for /F "tokens=*" %%A in ( %ADMIN_S1CHAT% ) do robocopy %ADMIN_S1CHAT% \\server1\%%A\S1Chat
>>>>>>> c1e0df02ffd5a1154b5aa192740b448d6a35ab82
goto a