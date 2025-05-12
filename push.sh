#!/bin/bash

# Quick script to commit and push all changes to GitHub

echo "Saving changes..."
git add .

msg="update: $(date '+%Y-%m-%d %H:%M:%S')"
if [ $# -eq 1 ]; then
  msg="$1"
fi

git commit -m "$msg"
git push origin main
