/*
🔥 Git Workflow: Clone someone else's repo (SSH) → modify → push to your own GitHub

## 📌 Step 1: Clone repository using SSH

git clone ssh-url-otherguy-repo
cd repo-name

👉 This downloads the other user's code to your local/EC2 machine

## 📌 Step 2: Make required changes

👉 Edit code as per your requirement
👉 Example:

* modify files
* add new features
* fix bugs

## 📌 Step 3: Create a new repository in your GitHub account

👉 Go to GitHub → Click "New Repository"
👉 Example:
https://github.com/your-username/my-repo.git

## 📌 Step 4: Handle existing remote (IMPORTANT 🔥)

👉 When you clone a repo, Git automatically sets:
origin → other-user repository

👉 Now you have 2 options:

## 🔹 Option 1 (Recommended - Safe Way)

git remote remove origin
git remote add origin [git@github.com](mailto:git@github.com):your-username/my-repo.git

👉 Removes connection to original repo
👉 Prevents accidental push to someone else's repo

## 🔹 Option 2 (Shortcut - Advanced)

git remote set-url origin your-ssh-url

👉 Directly replaces old repo with your repo
👉 Same result in one command

## ⚠️ If you SKIP this step:

👉 Old origin will still point to other-user repo
👉 Possible issues:

* Permission denied while pushing ❌
* Accidental push to wrong repo ❌

## 📌 Step 5: Add, commit and push changes

git add .
git commit -m "Initial commit after cloning and modifying"
git push -u origin main

## 📌 Step 6: Verify

👉 Open your GitHub repo
👉 You will see your code there ✅

## ⚠️ Important Notes

* SSH key must be added to your GitHub account
* Use SSH instead of HTTPS to avoid authentication issues
* Check branch name (main/master)
* If repo is private → you must have access

## 🧠 Easy Summary

Clone (SSH) → Modify → Fix remote → Push

## 🎯 Interview Line

To copy a repository from another account and push it to your own GitHub,
we clone the repo, update or replace the remote (origin),
and then commit and push the changes using SSH authentication.
*/
