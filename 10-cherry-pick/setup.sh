#!/bin/bash
rm -rf .git *.txt
git init -q
DEFAULT_BRANCH=$(git symbolic-ref --short HEAD)
echo 'Base' > app.txt
git add . && git commit -q -m 'Initial'
git checkout -q -b experimental
echo 'Experimental' > feat.txt
git add . && git commit -q -m 'Big Feature'
echo 'Critical fix' >> app.txt
git add . && git commit -q -m 'Bugfix'
git checkout -q "$DEFAULT_BRANCH"
echo 'Exercise 10 initialized. Task: Cherry-pick ONLY the Bugfix.'
