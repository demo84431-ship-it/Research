#!/bin/bash
# Auto-push script for Research repository
# Runs every 10-15 minutes to sync changes to GitHub
# Token is stored in local git config credential helper (not in this file)

REPO_DIR="/home/work/.openclaw/workspace/Research"
cd "$REPO_DIR" || exit 1

# Check if there are any changes
if [[ -n $(git status --porcelain) ]]; then
    git add -A
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    git commit -m "Auto-sync: ${TIMESTAMP}"
    git push origin main 2>&1
    echo "[$(date)] Pushed changes to GitHub"
else
    # Even if no local changes, pull latest from remote
    git pull origin main --rebase 2>/dev/null
    echo "[$(date)] No local changes, pulled latest"
fi
