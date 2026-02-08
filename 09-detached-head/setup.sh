#!/bin/bash
rm -rf .git *.txt
git init -q

echo "v1: Basic structure" > app.txt
git add . && git commit -q -m "v1: base"

echo "v2: Added logic" >> app.txt
git add . && git commit -q -m "v2: logic"

echo "v3: Added styles" >> app.txt
git add . && git commit -q -m "v3: styles"

# Create a 'trap' file that only exists in the future
echo "future stuff" > experimental.txt
git add . && git commit -q -m "v4: experimental"

echo "Exercise 09 initialized. Your goal is to inspect the state of 'v2'."