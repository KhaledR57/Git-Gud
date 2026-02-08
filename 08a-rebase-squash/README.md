# Exercise 08a: Interactive Rebase (Squash)

### The Scenario
While developing 'Function A', you made several messy commits including debug logs and a typo fix. You are about to open a Pull Request for code review.
To make it easier for your senior developers to review your work, you want to combine those three 'messy' commits into one clean, professional-looking commit.

### Your Task
Use an interactive rebase to 'squash' the last 3 commits into a single commit named 'Add Function A with documentation'.

### Expected Output
- Run `git log --oneline`. You should see only **two** commits in total: "Initial commit" and your new combined commit.
- You should not see "wip" or "fixed typo" in the history anymore.