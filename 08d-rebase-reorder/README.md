# Exercise 08d: Interactive Rebase (Reorder)

### The Scenario
You committed "Add Styles" before "Add Structure", but logically the HTML structure should come before the CSS styles.

### Your Task
Use interactive rebase to **swap the order** of the last two commits.

### Expected Output
- Run `git log --oneline`. The commit "Add Structure" should appear *below* (older than) "Add Styles".