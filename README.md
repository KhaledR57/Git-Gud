# Git-Gud

### *Because "git commit -m 'asdf'" is not a strategy.*

A hands-on, puzzle-based training ground designed to turn Git-panickers into Git-Grandmasters. This isn't just a list of commands, it's a series of real-world scenarios where you'll fix messes, travel through time, and master the art of a clean history.

---

## Getting Started

1. **Clone this repo**:
```bash
git clone git@github.com:KhaledR57/Git-Gud.git
cd Git-Gud

```


2. **The "Loop"**: Each exercise lives in its own folder. To play:
* **Step 1**: Enter an exercise folder (e.g., `cd 00-commit`).
* **Step 2**: Run `./setup.sh` to generate the scenario (You may have to run `chmod +x setup.sh`).
* **Step 3**: Follow the instructions in that folder's `README.md`.
* **Step 4**: Return to the root and run `./verify_tests.sh` to see if you passed.


---

### Note

This workshop involves "destructive" git commands (rebase, reset, etc.). That's the point! This is a playground. If you break a folder beyond repair, just rerun the `setup.sh` again.

**Happy Committing!**
