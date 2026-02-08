# Exercise 05: The Merge Conflict

### The Scenario
You and a teammate both edited the same line in `todo.md` at the same time on different branches. When you try to merge his work into yours, Git gets confused because it doesn't know which line is the 'truth'. It stops the merge and asks you to decide.

### Your Task
1. Try to merge `feature-conflict` into `main` (This will fail).
2. Open `todo.md` and identify the conflict markers (`<<<<<<<`, `=======`, `>>>>>>>`).
3. Edit the file so that **both** lines are kept. It should look like this:
   ```text
   TODO list:
   Main Update
   Feature Update
   ```
4. Add and commit the resolution.

### Expected Output
- Run `cat todo.md`. It should be clean (no markers) and contain the resolved text.
- Run `git log`. You should see a merge commit.