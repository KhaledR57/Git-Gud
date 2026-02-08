# Exercise 00: The Basic Commit

### Scenario
You have just created two files: `hello.txt` and `notes.txt`. Currently, these files are **untracked**. This means Git is aware they exist in the folder, but it is not "watching" them or recording their history yet. 

To save your work properly, you need to move these files through the Git workflow: from the Working Directory to the Staging Area, and finally into the Local Repository.



### Your Task
1. Run `git status` to see that the files are currently "untracked" (usually shown in red).
2. **Stage** both files using the `git add` command.
3. Run `git status` again to verify they are now "changes to be committed" (usually shown in green).
4. **Commit** the changes with the message: `Initial commit`.

### Expected Output
1. Run `git log`. You should see one commit entry with your name, the date, and the commit message `Initial commit`.