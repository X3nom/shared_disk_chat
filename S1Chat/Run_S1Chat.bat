@echo off
::       modify this ˅
set GLOBAL_CHAT_PATH=\\server1\userA\S1ChatAdmin\chat.txt
::       modify this ˄

:: window for sending messages to global chat, on startup opens window showing content of chat
cd sys
start S1chatWindow.bat
cd ..
:a
set /p msg="enter message: [36m"
echo [34m%username%^> [33m%msg% >> %GLOBAL_CHAT_PATH%
set msg=""
echo "[0m"
cls
goto a
