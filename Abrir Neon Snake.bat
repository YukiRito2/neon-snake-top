@echo off
rem Abre Neon Snake TOP y su widget de datos en ventanas propias de Edge que NO se pausan aunque las minimices o las tapes.
rem Abre Streamer.bot si no esta abierto (el juego se conecta a el para los eventos de TikFinity)
tasklist /FI "IMAGENAME eq Streamer.bot.exe" 2>nul | find /I "Streamer.bot.exe" >nul
if errorlevel 1 if exist "%USERPROFILE%\Documents\StreamerBot\Streamer.bot.exe" (
  start "" /D "%USERPROFILE%\Documents\StreamerBot" "%USERPROFILE%\Documents\StreamerBot\Streamer.bot.exe"
  timeout /t 5 /nobreak >nul
)
set FLAGS=--user-data-dir="%LOCALAPPDATA%\NeonSnakeTOP" --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding --autoplay-policy=no-user-gesture-required
start "" msedge --new-window --app="file:///%~dp0index.html" %FLAGS%
timeout /t 2 /nobreak >nul
start "" msedge --new-window --app="file:///%~dp0widget.html" --window-size=760,230 %FLAGS%
