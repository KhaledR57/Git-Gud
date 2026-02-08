#!/bin/bash
rm -rf .git *.html
git init -q
echo '<h1>Home</h1>' > index.html
git add . && git commit -q -m 'Initial commit'
git checkout -q -b feature-login
echo '<form>Login</form>' > login.html
git add . && git commit -q -m 'Add login form'
git checkout -q main
echo '<footer>Contact us</footer>' >> index.html
git add . && git commit -q -m 'Update footer'
echo 'Exercise 04 initialized. Task: Merge feature-login into main.'
