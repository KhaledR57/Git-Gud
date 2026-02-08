#!/bin/bash
rm -rf .git *.txt
git init -q
echo "Stable version" > app.txt
git add app.txt
git commit -q -m "Initial commit"

echo "Exercise 03-branching initialized. Task: Create and switch to a new branch."