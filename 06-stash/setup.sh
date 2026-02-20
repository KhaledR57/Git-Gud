#!/bin/bash
rm -rf .git *.json *.txt
git init -q
DEFAULT_BRANCH=$(git symbolic-ref --short HEAD)
echo '{"version": "1.0"}' > config.json
git add .
git commit -q -m "Initial config"
git checkout -q -b urgent-fix
echo '{"version": "1.1-beta"}' > config.json
git commit -q -a -m "Update version on fix branch"
git checkout -q "$DEFAULT_BRANCH"
echo '{"version": "BROKEN-WORK-IN-PROGRESS"}' > config.json 
echo "Exercise 06 initialized."
echo "You have uncommitted changes on '$DEFAULT_BRANCH'. You need to switch to 'urgent-fix'."
