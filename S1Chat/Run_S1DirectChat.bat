@echo off 

set ALL_USERS_ROOT="\\server1\"

cd sys
start S1inboxWindow.bat
cd ..
echo type /msg [username] to change destination of your messages
set /p user="enter user to send messages to: "
for /d /r %ALL_USERS_ROOT% %%a in (*) do if /i %%~nxa==%user% set user_path=%%a
set inbox_path="%user_path%\S1chat\data\inbox.txt"
cls
:a
echo type /msg [username] to change destination of your messages
set /p msg="enter msg for %user%: [36m"
echo [34m%username%^> [33m%msg% >> %inbox_path%
set msg=""
echo "[0m"
cls

goto a