#!/bin/bash

# Your GitHub username and PAT (Personal Access Token)
GITHUB_USERNAME="thquddnr123"
GITHUB_TOKEN="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"

# Repository name
REPO_NAME="TESTREPODEATH"

# File you want to upload
FILE_TO_UPLOAD="<file-to-upload>"

# Create the repository on GitHub using the PAT
curl -u "$GITHUB_USERNAME:$GITHUB_TOKEN" https://api.github.com/user/repos -d "{\"name\":\"$REPO_NAME\"}"

# Add, commit, and push the file to the newly created repository
git init
touch test.md
git add .
git commit -m "Initial commit"
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
git remote set-url origin https://$GITHUB_USERNAME@github.com/$GITHUB_USERNAME/$REPO_NAME.git
git branch -M main
git push -u origin main
