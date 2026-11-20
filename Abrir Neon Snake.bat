@echo off
rem Abre Neon Snake TOP en una ventana propia de Edge que NO se pausa aunque la minimices o la tapes.
start "" msedge --new-window --app="file:///%~dp0index.html" --user-data-dir="%LOCALAPPDATA%\NeonSnakeTOP" --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-renderer-backgrounding --autoplay-policy=no-user-gesture-required
