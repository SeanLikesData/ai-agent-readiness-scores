#!/bin/sh
set -e
cd "$(dirname "$0")/.."
curl -sSf -o grades.json https://docsforagents.com/grades.json
curl -sSf -o grades.csv https://docsforagents.com/grades.csv
