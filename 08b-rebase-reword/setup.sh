#!/bin/bash
rm -rf .git *.txt
git init -q
echo 'Initial content' > file.txt
git add . && git commit -q -m 'Initial commit'
echo 'Secret sauce hehehehe' >> file.txt
git add . && git commit -q -m 'ajsdkgfjahskdgf :)'
echo 'Final touches' >> file.txt
git add . && git commit -q -m 'Latest work'
echo 'Exercise 08b initialized. Task: Reword the commit.'