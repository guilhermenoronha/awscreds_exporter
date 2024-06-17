#!/bin/bash

# Command to export AWS variables to global environment

JSON_FILE="$1"

aws configure set aws_access_key_id "$(jq -r '.aws_access_key_id' "$JSON_FILE")"
aws configure set aws_secret_access_key "$(jq -r '.aws_secret_access_key' "$JSON_FILE")"
aws configure set aws_session_token "$(jq -r '.aws_session_token' "$JSON_FILE")"

echo Credentials exported successfully!
sleep 2