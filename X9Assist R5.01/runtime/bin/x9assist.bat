@echo off
set DIR="%~dp0"
set JAVA_EXEC="%DIR:"=%\java"



pushd %DIR% & %JAVA_EXEC% %CDS_JVM_OPTS% -Xmx7g -p "%~dp0/../app" -m com.x9ware.x9assist.merged.module/com.x9ware.start.X9AssistMain  %* & popd
