@echo off
::       modify this ˅
set GLOBAL_CHAT_PATH=\\server1\userA\S1ChatAdmin\chat.txt
::       modify this ˄

setlocal enableDelayedExpansion
:: window showing contents of global chat, updates after change of chat.txt size occures
:read
    cls
    type %GLOBAL_CHAT_PATH%

    for %%a in (%GLOBAL_CHAT_PATH%) do set filetimesize=%%~tza
    :checkupdate
        ping -n 1 -w 100 localhost >nul
        for %%a in (%GLOBAL_CHAT_PATH%) do if "!filetimesize!"=="%%~tza" goto checkupdate
    echo updated
    goto read
