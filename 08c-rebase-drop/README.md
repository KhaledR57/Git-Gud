# Exercise 08c: Interactive Rebase (Drop)

### The Scenario
Whoops! You accidentally committed a file called `secret.txt` that contains a password. You must remove this commit from the history entirely, as if it never happened.

### Your Task
Use interactive rebase to **drop** the commit labeled "Add sensitive data".

### Expected Output
- Run `ls`. The file `secret.txt` should no longer exist.
- Run `git log`. The commit "Add sensitive data" should be completely missing from the history.