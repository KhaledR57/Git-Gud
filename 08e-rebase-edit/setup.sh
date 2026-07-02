#!/bin/bash
rm -rf .git *.py
git init -q
echo 'print("Start")' > app.py
git add . && git commit -q -m 'Initial'
echo 'print("Helo")' >> app.py
echo '' >> app.py
git add . && git commit -q -m 'Add greeting with typo'
echo 'print("End")' >> app.py
git add . && git commit -q -m 'Add end line'
echo 'Exercise 08e initialized. Task: Fix typo via rebase edit.'
