@echo off 
:: MODIFY THIS        \/
set ALL_USERS_ROOT="\\server1\"
:: MODIFY THIS        /\
cd sys
start S1inboxWindow.bat
cd ..
:change
cls
echo [0mtype /msg to change destination of your messages
set /p user="[0menter user to send messages to: [36m"
for /d /r %ALL_USERS_ROOT% %%a in (*) do if /i %%~nxa==%user% set user_path=%%a
set inbox_path="%user_path%\S1chat\data\inbox.txt"
cls
:a
echo [0mtype /msg to change destination of your messages
set /p msg="enter msg for [36m%user%[0m: [33m"
if %msg%== /msg ( goto change )
echo [34m%username%^> [33m%msg% >> %inbox_path%
set msg=""
echo "[0m"
cls

goto a
