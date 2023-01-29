@echo off
setlocal enableDelayedExpansion
:: window showing contents of global chat, updates after change of chat.txt size occures
:read
    cls
    type \\server1\userA\S1ChatAdmin\chat.txt

    for %%a in (\\server1\userA\S1ChatAdmin\chat.txt) do set filetimesize=%%~tza
    :checkupdate
        ping -n 1 -w 100 localhost >nul
        for %%a in (\\server1\userA\S1ChatAdmin\chat.txt) do if "!filetimesize!"=="%%~tza" goto checkupdate
    echo updated
    goto read