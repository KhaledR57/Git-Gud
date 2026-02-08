#!/bin/bash


# ==============================================================================
#                  ____ ___ _____    ____ _   _ ____  
#                 / ___|_ _|_   _|  / ___| | | |  _ \ 
#                | |  _ | |  | |   | |  _| | | | | | |
#                | |_| || |  | |   | |_| | |_| | |_| |
#                 \____|___| |_|    \____|\___/|____/
#
#                         --- KhaledR57 ---
#
#  I see you, clever dev. Browsing the source code? Looking for a shortcut?
#
#  You're smart enough to read this script, which means you're smart enough 
#  to solve the challenge properly. 
#
#  "Shortcuts in Git lead to long nights in Production."
#
#  CLOSE THIS FILE. Go back to the exercises. 
#  Earn that badge with your brain, not with a text editor.
# ==============================================================================


RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' 

# Track failures
TOTAL_FAILS=0
TOTAL_TESTS=0

echo -e "${YELLOW}--- Git Workshop: Automated Verifier ---${NC}\n"

verify_step() {
    local dir="$1"
    local test_cmd="$2"
    local error_msg="$3"
    
    ((TOTAL_TESTS++))

    if [ -d "$dir" ]; then
        if (cd "$dir" && eval "$test_cmd") &>/dev/null; then
            echo -e "[ ${GREEN}PASS${NC} ] $dir"
        else
            echo -e "[ ${RED}FAIL${NC} ] $dir: $error_msg"
            ((TOTAL_FAILS++))
        fi
    else
        echo -e "[ ${YELLOW}SKIP${NC} ] $dir (Not found)"
    fi
}

# --- 00-commit ---
verify_step "00-commit" \
    "git log -n 1 | grep -q 'Initial commit' && \
     git ls-tree -r HEAD --name-only | grep -q 'hello.txt' && \
     git ls-tree -r HEAD --name-only | grep -q 'notes.txt'" \
    "Files not committed, working tree not clean, or commit message is incorrect."

# --- 01-amend ---
verify_step "01-amend" \
    "git show --name-only HEAD | grep -q 'file2.txt' && [[ \$(git rev-list --count HEAD) -eq 1 ]]" \
    "file2.txt was not amended into the previous commit."

# --- 02-reset-soft ---
verify_step "02-reset-soft" \
    "git log --oneline | grep -q 'Stable version' && \
    ! git log --oneline | grep -q 'Accidental' && git diff --staged | grep -q 'unfinished work'" \
    "Commit should be removed but changes must remain in the staging area (soft reset)."

# --- 03-branching ---
verify_step "03-branching" \
    "[[ \$(git rev-parse --abbrev-ref HEAD) == 'feature-idea' ]] && \
     [[ -f 'idea.txt' ]] && \
     git log -n 1 | grep -q 'feat: add new idea'" \
    "Check Failed: You are not on 'feature-idea', or the 'idea.txt' commit is missing."

# --- 04-merge ---
verify_step "04-merge" \
    "git branch --merged | grep -q 'feature-login'" \
    "Branch 'feature-login' has not been merged into main."

# --- 05-merge-conflict ---
verify_step "05-merge-conflict" \
    "! grep -qE '<<<<<<|======|>>>>>>' todo.txt && \
     grep -zq 'Feature Update.*Main Update' todo.txt && \
     [[ \$(git rev-parse HEAD^2) == \$(git rev-parse feature-conflict) ]] && \
     [[ \$(git rev-parse --abbrev-ref HEAD) == 'main' ]]" \
    "Ensure you merged feature-conflict INTO main, 'Feature Update' is BEFORE 'Main Update', and you created a merge commit."

# --- 06-stash ---
verify_step "06-stash" \
    "[[ \$(git rev-parse --abbrev-ref HEAD) == 'main' ]] && \
     [[ -z \$(git stash list) ]] && \
     grep -q 'BROKEN-WORK-IN-PROGRESS' config.json && \
     git log urgent-fix --oneline -n 1 | grep -q 'fix:'" \
    "Check Failed: Ensure you are on 'main', you popped your stash, and you committed the fix on the urgent-fix branch."

# --- 07-rebase ---
verify_step "07-rebase" \
    "! git log --oneline | grep -q 'Merge branch' && git log --oneline | grep -q 'Critical bug fix'" \
    "History is not linear (rebase failed or merge was used instead)."

# --- 08a-rebase-squash ---
verify_step "08a-rebase-squash" \
    "[[ \$(git rev-list --count HEAD) -eq 2 ]] && ! git log | grep -q 'wip:'&& \
     git reflog | grep -q 'rebase (finish)'" \
    "Commits were not squashed (too many commits found or wip messages remain)."

# --- 08b-rebase-reword ---
verify_step "08b-rebase-reword" \
    "git log --oneline | grep -q 'feat: finalize documentation' && \
     git reflog | grep -q 'rebase (finish)'" \
    "Check Failed: Message not found, or you didn't use 'rebase' to change it."

# --- 08c-rebase-drop ---
verify_step "08c-rebase-drop" \
    "[[ ! -f 'secret.txt' ]] && \
     ! git log --oneline | grep -qi 'sensitive' && \
     git reflog | grep -q 'rebase (finish)'" \
    "Either the file exists, the commit is still in history, or you didn't use rebase to drop it."

# --- 08d-rebase-reorder ---
verify_step "08d-rebase-reorder" \
    "[[ \$(git log --format=%s -n 2 | head -n 1) == 'Add Styles' ]] && \
     [[ \$(git log --format=%s -n 2 | tail -n 1) == 'Add Structure' ]] && \
     git reflog | grep -q 'rebase (finish)'" \
    "Commit order is incorrect."

# --- 08e-rebase-edit ---
verify_step "08e-rebase-edit" \
    "grep -q 'Hello' app.py && \
     ! grep -q 'Helo' app.py && \
     [[ \$(git rev-list --count HEAD) -eq 3 ]] && \
     git reflog | grep -q 'rebase.*(finish)'" \
    "Check Failed: Either 'Helo' still exists, you added an extra commit, or you didn't finish the rebase."

# --- 09-detached-head ---
verify_step "09-detached-head" \
    "[[ \$(git rev-parse --abbrev-ref HEAD) == 'main' ]] && \
     git reflog | grep -q 'checkout: moving from .* to main' && \
     git reflog | grep -q 'v2: logic'" \
    "Check Failed: You didn't checkout the v2 commit or you forgot to return to the 'main' branch."

# --- 10-cherry-pick ---
verify_step "10-cherry-pick" \
    "grep -q 'Critical fix' app.txt && \
     [[ ! -f 'feat.txt' ]] && \
     git reflog | grep -q 'cherry-pick'" \
    "Either the fix is missing, you merged the whole branch, or you didn't use the 'git cherry-pick' command."

# --- 11-reflog ---
verify_step "11-reflog" \
    "git log -n 1 | grep -q 'Version 2'" \
    "Version 2 was not recovered from the reflog."

if [ $TOTAL_FAILS -eq 0 ] && [ $TOTAL_TESTS -gt 0 ]; then
    echo -e "${GREEN}####################################################${NC}"
    echo -e "${GREEN}#                                                  #${NC}"
    echo -e "${GREEN}#    CONGRATULATIONS! ALL TESTS PASSED!            #${NC}"
    echo -e "${GREEN}#       You are now a Git Grandmaster.             #${NC}"
    echo -e "${GREEN}#                                                  #${NC}"
    echo -e "${GREEN}####################################################${NC}"
    echo -e "\n${CYAN}Claim your prize here:${NC}"
    echo -e "${YELLOW}https://c.tenor.com/dTA1KJh8sksAAAAd/tenor.gif${NC}\n"
else
    echo -e "${RED}Found $TOTAL_FAILS error(s). Keep practicing!${NC}"
fi