# 📘 Git Setup & Usage Notes (EC2 + GitHub)

---

## 🔹 1. Generate GitHub Personal Access Token (PAT)

👉 HinEnglish:
GitHub me login karo → Settings → Developer Settings → Personal Access Tokens → Generate token

👉 English:
Login to GitHub → Settings → Developer Settings → Personal Access Tokens → Generate a token

⚠️ Note:

* Token password ki jagah use hota hai
* Isse kabhi share mat karo

---

## 🔹 2. Initialize Git in EC2

```bash
git init
```

👉 HinEnglish:
Local repo create karta hai

👉 English:
Creates a local Git repository

---

## 🔹 3. Add Remote Repository

```bash
git remote add origin https://github.com/<username>/<repo>.git
```

👉 HinEnglish:
Local repo ko GitHub se connect karta hai

👉 English:
Connects local repo to GitHub

---

## 🔹 4. Verify Remote

```bash
git remote -v
```

👉 HinEnglish:
Check karo connection properly set hua hai ya nahi

👉 English:
Verify remote connection

---

## 🔹 5. Update Remote URL (Using Token)

```bash
git remote set-url origin https://<TOKEN>@github.com/<username>/<repo>.git
```

👉 HinEnglish:
Authentication ke liye token add karte hain

👉 English:
Adds token for authentication

⚠️ Important:

* Token URL me store hota hai (not secure)
* Better use SSH (recommended)

---

## 🔹 6. Verify Updated Remote

```bash
git remote -v
```

👉 HinEnglish:
Ab URL me token dikhega

👉 English:
You’ll see token in the URL

---

## 🔹 7. Add Files

```bash
git add .
```

👉 HinEnglish:
Sab files staging me add ho jayengi

👉 English:
Adds all files to staging

---

## 🔹 8. Commit Changes

```bash
git commit -m "your message"
```

👉 HinEnglish:
Changes save karta hai

👉 English:
Saves changes

---

## 🔹 9. Rename Branch to Main

```bash
git branch -M main
```

👉 HinEnglish:
Default branch ko main banata hai

👉 English:
Renames branch to main

---

## 🔹 10. Push Code to GitHub

```bash
git push -u origin main
```

👉 HinEnglish:
Code GitHub pe push karta hai
`-u` future ke liye tracking set karta hai

👉 English:
Pushes code and sets upstream tracking

---

## 🔹 11. Pull Code from GitHub (Important Cases)

### ✅ Normal Pull

```bash
git pull origin main
```

---

### ⚠️ If Divergent Branch Error

```bash
git pull origin main --no-rebase
```

---

### ⚠️ If Unrelated History Error

```bash
git pull origin main --allow-unrelated-histories --no-rebase
```

👉 HinEnglish:
Local + remote dono ko merge karta hai

👉 English:
Merges local and remote histories

---

## 🔹 12. After Merge (Very Important)

```bash
git add .
git commit -m "merge changes"
git push origin main
```

---

## 🔹 13. Check Status

```bash
git status
```

👉 HinEnglish:
Current repo state check karta hai

👉 English:
Shows current repo state

---

# 🚀 Best Practice (VERY IMPORTANT)

## 🔐 Use SSH Instead of Token

```bash
git remote set-url origin git@github.com:<username>/<repo>.git
```

👉 HinEnglish:
Password/token ki zarurat nahi hogi

👉 English:
No need for password/token

---

# ⚠️ Common Mistakes

❌ `git remove` → wrong
✅ `git rm`

❌ `git restore --stage` → wrong
✅ `git restore --staged`

---

# 🧠 Easy Summary

👉 HinEnglish:

* init → repo create
* remote add → connect GitHub
* add → files ready
* commit → save
* push → upload

👉 English:

* init → create repo
* remote add → connect
* add → stage
* commit → save
* push → upload

---

# 🎯 Interview Answer (Short)

👉 HinEnglish:
Git ka use version control ke liye hota hai. EC2 me Git setup karke hum local code ko GitHub repository se connect kar sakte hain aur push/pull operations perform kar sakte hain

👉 English:
Git is used for version control. On EC2, Git can be set up to connect local code with a GitHub repository and perform push/pull operations

---

# 🔥 Extra (EC2 Setup for Git)

```bash
# install git
sudo apt update
sudo apt install git -y

# check version
git --version
```

---

# 🧠 Final Line

👉 HinEnglish:
Git + EC2 = code manage + deploy + collaborate

👉 English:
Git + EC2 = manage, deploy, and collaborate on code

---
