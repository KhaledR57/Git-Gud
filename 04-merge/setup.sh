#!/bin/bash
rm -rf .git *.html
git init -q
DEFAULT_BRANCH=$(git symbolic-ref --short HEAD)
echo '<h1>Home</h1>' > index.html
git add . && git commit -q -m 'Initial commit'
git checkout -q -b feature-login
echo '<form>Login</form>' > login.html
git add . && git commit -q -m 'Add login form'
git checkout -q "$DEFAULT_BRANCH"
echo '<footer>Contact us</footer>' >> index.html
git add . && git commit -q -m 'Update footer'
echo "Exercise 04 initialized. Task: Merge feature-login into $DEFAULT_BRANCH."
