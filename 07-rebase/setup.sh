#!/bin/bash
rm -rf .git *.js *.css
git init -q
echo 'init' > app.js
git add . && git commit -q -m 'Initial commit'
git checkout -q -b feature-darkmode
echo 'body { color: white; }' > style.css
git add . && git commit -q -m 'Start dark mode'
git checkout -q main
echo 'bug fix' >> app.js
git add . && git commit -q -m 'Critical bug fix on main'
git checkout -q feature-darkmode
echo 'Exercise 07 initialized. Task: Rebase feature-darkmode onto main.'
