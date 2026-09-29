@echo off
for /f "tokens=1,* delims==" %%a in (.env) do (
    if "%%a"=="EPIDEMIC_API_KEY" (
        echo window.EPIDEMIC_API_KEY = "%%b"; > env.js
    )
)
start "" "%~dp0index.html"
