# Exercise 09: Detached HEAD (The Time Traveler)

### The Scenario
You are on `v4`, but someone reported a bug that might have started in `v2`. You need to "teleport" your entire working directory back to the moment `v2` was committed to see how the code looked then.



### Your Task
1. Find the commit hash for `v2: logic`.
2. Run `git checkout <hash_of_v2>`.
   * *Note: Git will give you a long warning about 'detached HEAD'. Don't panic! It just means you aren't on a branch.*
3. Look at your files. `experimental.txt` should have disappeared, and `app.txt` should only have two lines.
4. Switch back to the `main` branch.

### Expected Output
- Your `git reflog` should show you moving to a specific commit and then moving back to `main`.
- You should end the exercise safely back on the `main` branch.