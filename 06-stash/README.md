# Exercise 06: Stashing (The Context Switch)

### The Scenario
You are deep in the middle of a complex configuration change on `main`. Your code is currently broken and not ready to be committed. Suddenly, an urgent bug appears on the `urgent-fix` branch. Git won't let you switch branches because of your uncommitted changes. You need to 'pause' your current work safely without committing it.

### Your Task
1. Temporarily 'stash' your changes.
2. Switch to `urgent-fix`, create `fix.txt` and commit it with the message `fix: done`.
3. Return to `main` and 'pop' your work to resume exactly where you left off.

### Expected Output
- The `urgent-fix` branch has the new commit.
- Your 'broken' changes are back in your working directory on `main`.
