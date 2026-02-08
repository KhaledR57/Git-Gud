#!/bin/bash
rm -rf .git *.py
git init -q
echo 'print("Hello")' > main.py
git add . && git commit -q -m 'Initial commit'
echo 'print("A")' >> main.py
git add . && git commit -q -m 'Add Function A'
echo 'print("debug")' >> main.py
git add . && git commit -q -m 'wip: debug logs'
echo '# fix typo' >> main.py
git add . && git commit -q -m 'fixed typo'
echo 'Exercise 08a initialized. Task: Squash the last 3 commits.'
