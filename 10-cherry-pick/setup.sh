#!/bin/bash
rm -rf .git *.txt
git init -q
echo 'Base' > app.txt
git add . && git commit -q -m 'Initial'
git checkout -q -b experimental
echo 'Experimental' > feat.txt
git add . && git commit -q -m 'Big Feature'
echo 'Critical fix' >> app.txt
git add . && git commit -q -m 'Bugfix'
git checkout -q main
echo 'Exercise 10 initialized. Task: Cherry-pick ONLY the Bugfix.'
