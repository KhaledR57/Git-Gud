# Exercise 01: Amending

### The Scenario
You just committed `file1.txt`, but you forgot that `file2.txt` was supposed to be in that same commit! You don't want to create a separate commit just for this mistake.

### Your Task
Stage `file2.txt`, then update the previous commit using the `--amend` flag to include this new file.

### Expected Output
- Run `git log`. You should still only see one commit (after the Initial commit).
- Run `git show HEAD`. It should list *both* `file1.txt` and `file2.txt`.