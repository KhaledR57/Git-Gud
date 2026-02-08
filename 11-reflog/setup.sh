#!/bin/bash
rm -rf .git *.txt
git init -q
echo 'v1' > data.txt
git add . && git commit -q -m 'Version 1'
echo 'v2' > data.txt
git add . && git commit -q -m 'Version 2'
git reset -q --hard HEAD~1
echo 'Exercise 11 initialized. Task: Use reflog to recover Version 2.'
