# Exercise 08b: Interactive Rebase (Reword)

### The Scenario
You realized that the **second** commit in your history has a messy message: `"ajsdkgfjahskdgf :)"`. Since it isn't the most recent commit, you can't use simple amendment. You need to perform "history surgery."

### Your Task
Use interactive rebase to **reword** that specific commit message to: `feat: finalize documentation`.

### Expected Output
- Run `git log`. The commit hash will remain (mostly) the same, but the message "ajsdkgfjahskdgf :)" should be gone.
- It should be replaced by `feat: finalize documentation`.