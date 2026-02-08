# Exercise 07: The Rebase

### The Scenario
You've been working on a 'Dark Mode' feature for several days. During this time, the `main` branch moved forward with a critical security bug fix. To ensure your feature works correctly with the latest fixes, you need to bring those changes into your branch. Instead of a messy merge commit, your team prefers a 'linear' history where your feature looks like it was built on top of the very latest version of the project.

### Your Task
Move your entire `feature-darkmode` history so it begins after the latest commit from `main`.

### Expected Output
- `git log --oneline` should show the 'Critical bug fix' *underneath* your 'Start dark mode' commit.
- No 'Merge branch' commits should exist.
