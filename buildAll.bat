@Echo Off
@REM PZP modules
call::buildWithGyp websocket
call::buildWithGyp sqlite3
call::buildWithGyp node-proxy

@REM PZH modules
call::buildWithGyp canvas


@REM Finish
pause
exit /B 0

:buildWithGyp
cd %~1
call node-gyp configure build
cd ..
goto:eof
