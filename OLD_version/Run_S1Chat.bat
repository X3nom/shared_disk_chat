@echo off
:: old version of S1Chat, works almost same as newer, but is uglier
start S1chatWindow.bat
:a
set /p msg="enter message: "
echo %username%^> %msg% >> \\server1\userA\S1ChatAdmin\chat.txt
set msg=""
goto a