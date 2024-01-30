@echo off
setlocal enabledelayedexpansion
REM Command to export AWS variables to global environment

SET JSON_FILE=%1

FOR /F "tokens=*" %%g IN ('jq.exe -r .aws_access_key_id !JSON_FILE!') do (aws configure set aws_access_key_id "%%g")
FOR /F "tokens=*" %%g IN ('jq.exe -r .aws_secret_access_key !JSON_FILE!') do (aws configure set aws_secret_access_key "%%g")
FOR /F "tokens=*" %%g IN ('jq.exe -r .aws_session_token !JSON_FILE!') do (aws configure set aws_session_token "%%g")

endlocal