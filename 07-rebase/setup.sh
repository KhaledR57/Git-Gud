#!/bin/bash
rm -rf .git *.js *.css
git init -q
DEFAULT_BRANCH=$(git symbolic-ref --short HEAD)
echo 'init' > app.js
git add . && git commit -q -m 'Initial commit'
git checkout -q -b feature-darkmode
echo 'body { color: white; }' > style.css
git add . && git commit -q -m 'Start dark mode'
git checkout -q "$DEFAULT_BRANCH"
echo 'bug fix' >> app.js
git add . && git commit -q -m "Critical bug fix on $DEFAULT_BRANCH"
git checkout -q feature-darkmode
echo "Exercise 07 initialized. Task: Rebase feature-darkmode onto $DEFAULT_BRANCH."
