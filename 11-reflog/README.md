# Exercise 11: The Safety Net (Reflog)

### The Scenario
In a moment of panic or confusion, you ran `git reset --hard HEAD~1`. You immediately realize that you just deleted 'Version 2', which contained hours of work. It is no longer in your `git log`. However, Git records every movement of the HEAD pointer in a secret diary called the `reflog`.

### Your Task
Use `git reflog` to find the SHA (ID) of the lost 'Version 2' commit and restore your branch to that state.

### Expected Output
- `data.txt` should show 'v2' again.
- The 'Version 2' commit should reappear in `git log`.
