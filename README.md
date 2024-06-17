# AWS Credentials Exporter

This repo has the script to export AWS credentials in json format to environment variables. This script is helpful for federated users with temporary credentials who need to reauthenticate often.

## Limitations

This scripts requires awscli to be installed.

## How to use

1. Clone this repo.
2. Add the folder of this repo on environment variables.
3. Save the json credentials in a file.
4. Use the command `exporter your_json_file.json` to export the variables.
5. Voilà.

## How to contribute

Some suggestions:

- Create the same script to run on PowerShell.
- Enhance the script to accept a clipboard json instead of a file.