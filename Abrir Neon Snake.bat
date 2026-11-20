@echo off
rem Abre Neon Snake TOP y su widget de datos en ventanas propias de Edge que NO se pausan aunque las minimices o las tapes.
set FLAGS=--user-data-dir="%LOCALAPPDATA%\NeonSnakeTOP" --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding --autoplay-policy=no-user-gesture-required
start "" msedge --new-window --app="file:///%~dp0index.html" %FLAGS%
timeout /t 2 /nobreak >nul
start "" msedge --new-window --app="file:///%~dp0widget.html" --window-size=400,720 %FLAGS%
