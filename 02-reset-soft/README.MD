# Exercise 02: The Soft Reset
### Scenario
You just made a commit, but immediately realized you forgot to include another change. You want to un-commit your **last commit** so you can add more files to it, but you don't want to lose the code you just wrote.

### Your Task
Use `git reset` with the `--soft` flag to move the branch back one commit.

### Expected Output
1. Run `git log`. The "Accidental premature commit" should no longer appear.
2. Run `git status`. Your changes to `app.txt` should still be there, and they should be **staged** (green), ready to be committed again.