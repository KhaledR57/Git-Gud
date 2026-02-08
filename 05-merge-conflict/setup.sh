#!/bin/bash
rm -rf .git *.txt
git init -q
echo 'TODO list:' > todo.txt
git add . && git commit -q -m 'Initial'
git checkout -q -b feature-conflict
echo 'Feature Update' >> todo.txt
git add . && git commit -q -m 'Feature Update'
git checkout -q main
echo 'Main Update' >> todo.txt
git add . && git commit -q -m 'Main Update'
echo 'Exercise 05 initialized. Task: Resolve conflict in todo.txt.'
