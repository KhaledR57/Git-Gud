#!/bin/bash
rm -rf .git *.txt

git init -q

echo 'Hello, World!' > hello.txt
echo 'Initial project notes' > notes.txt

echo "Exercise 00 initialized."
echo "Task: Stage and commit hello.txt and notes.txt."