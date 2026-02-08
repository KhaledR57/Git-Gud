#!/bin/bash
rm -rf .git *.txt
git init -q
echo "stable code" > app.txt
git add . && git commit -q -m "Stable version"
echo "unfinished work" >> app.txt
git add . && git commit -q -m "Accidental premature commit"
echo "Exercise 02 initialized. Task: Undo the last commit but keep the work staged."