#!/bin/bash
rm -rf .git *.txt
git init -q
echo 'line 1' > app.txt
git add . && git commit -q -m 'Initial commit'
echo 'password=123' > secret.txt
git add . && git commit -q -m 'Add sensitive data (DROP THIS)'
echo 'line 2' >> app.txt
git add . && git commit -q -m 'Add second feature'
echo 'Exercise 08c initialized. Task: Drop the secret commit.'
