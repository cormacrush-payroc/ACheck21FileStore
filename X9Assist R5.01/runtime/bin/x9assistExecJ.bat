@echo off

: Windows batch script to launch x9assist. 
: This batch script can be used as the basis to create user batch scripts.

set DIR="%~dp0"
set JAVA_EXEC="%DIR:"=%\javaw.exe"

: Launch x9assist using the merged jar. 
: Pushd is used to push the current working directory, with subsequent popd. 
: javaw.exe is used so the application does not write to the console window.
: Start is used to further prevent the console window from being opened. 
: Maximum heap size (Xmx) is recommended as 7g for 64-bit and 1536m for 32-bit JVMs. 

pushd %DIR% & start "" %JAVA_EXEC% -Xmx7g -p "%~dp0/../app" -m com.x9ware.x9assist.merged.module/com.x9ware.start.X9AssistMain  %* & popd

exit
