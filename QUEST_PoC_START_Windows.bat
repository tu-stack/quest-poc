@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  set "PYCMD=py -3"
) else (
  set "PYCMD=python"
)
echo Starting QUEST PoC at http://127.0.0.1:8765/quest_poc.html
start "" "http://127.0.0.1:8765/quest_poc.html"
%PYCMD% -m http.server 8765 --bind 127.0.0.1
pause
