#!/bin/bash
rm -rf .git *.txt
git init -q
echo 'Project Start' > index.txt
git add . && git commit -q -m 'Initial'
echo 'body { color: blue; }' > css.txt
git add . && git commit -q -m 'Add Styles'
echo '<div>Hello</div>' > html.txt
git add . && git commit -q -m 'Add Structure'
echo "Exercise 08d initialized. Task: Swap 'Styles' and 'Structure' order."