@echo off
setlocal enabledelayedexpansion
REM Command to export AWS variables to global environment

SET JSON_FILE=%1

FOR /F "tokens=*" %%g IN ('jq.exe -r .aws_access_key_id !JSON_FILE!') do (SETX AWS_ACCESS_KEY_ID "%%g")
FOR /F "tokens=*" %%g IN ('jq.exe -r .aws_secret_access_key !JSON_FILE!') do (SETX AWS_SECRET_ACCESS_KEY "%%g")
FOR /F "tokens=*" %%g IN ('jq.exe -r .aws_session_token !JSON_FILE!') do (SETX AWS_SESSION_TOKEN "%%g")

endlocal