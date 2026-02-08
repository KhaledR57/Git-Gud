# Exercise 08e: Interactive Rebase (Edit)

### The Scenario
You just realized that two commits ago, you introduced a typo ('Helo' instead of 'Hello'). You've already made more progress since then. Instead of adding a new 'Fix typo' commit (which looks sloppy), you want to travel back in time, fix the error inside the original commit, and then return to the present.

### Your Task
Use interactive rebase with the `edit` command to stop at the typo commit, fix the code in `app.py`, and continue the rebase.

### Expected Output
- `app.py` should contain 'Hello'.
- No extra 'Fix typo' commits should appear in the log.
