@echo off
setlocal enableDelayedExpansion
:: window showing contents of inbox, updates after change of chat.txt size occures

cd ..\data
echo %cd%

:read
    cls
    type inbox.txt

    for %%a in (inbox.txt) do set filetimesize=%%~tza
    :checkupdate
        ping -n 1 -w 100 localhost >nul
        for %%a in (inbox.txt) do if "!filetimesize!"=="%%~tza" goto checkupdate
    echo updated
    goto read