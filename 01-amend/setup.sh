#!/bin/bash
rm -rf .git *.txt
git init -q
touch file1.txt file2.txt
git add file1.txt
git commit -q -m 'Add files'
echo 'Exercise 01 initialized. Task: Amend file2.txt into last commit.'
