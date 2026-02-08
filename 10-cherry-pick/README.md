# Exercise 10: Cherry-Pick

### The Scenario
The `experimental` branch has a lot of unstable code, but it also has **one specific commit** ("Bugfix") that fixes a critical issue. You want that bug fix on `main`, but you strictly **do not** want the unstable experimental features.

### Your Task
Find the SHA (ID) of the "Bugfix" commit on the `experimental` branch and **cherry-pick** it into `main`.

### Expected Output
- Run `cat app.txt`. It should contain "Critical fix".
- Run `ls`. The file `feat.txt` (from the experimental branch) should **NOT** exist.