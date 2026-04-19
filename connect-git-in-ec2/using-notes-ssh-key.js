/*
===========================================
🔐 Clone GitHub Repo using SSH (Step-by-Step)
===========================================

🧠 Purpose:
Clone GitHub repository using SSH (no username/password required)

👉 Why needed?
GitHub removed password authentication → SSH is secure & standard

-------------------------------------------
🚀 Step-by-Step Setup
-------------------------------------------

🔹 Step 1: Generate SSH Key

Command:
ssh-keygen -t ed25519 -C "your_email@example.com"

👉 HinEnglish:
Ye SSH key pair generate karta hai (public + private)

👉 English:
This generates an SSH key pair (public + private)

📁 Files:
~/.ssh/id_ed25519      → Private key (⚠️ NEVER share)
~/.ssh/id_ed25519.pub  → Public key

-------------------------------------------

🔹 Step 2: Copy Public Key

Command:
cat ~/.ssh/id_ed25519.pub

👉 HinEnglish:
Public key copy kar lo

👉 English:
Copy the public key

-------------------------------------------

🔹 Step 3: Add Key to GitHub

Steps:
1. GitHub → Settings
2. SSH and GPG keys
3. Click "New SSH key"
4. Paste key
5. Save

👉 HinEnglish:
Ab GitHub tumhari machine ko trust karega

👉 English:
GitHub will trust your machine

-------------------------------------------

🔹 Step 4: Test SSH Connection (Recommended)

Command:
ssh -T git@github.com

👉 Expected:
Hi username! You've successfully authenticated...

👉 HinEnglish:
Ye aaya → setup correct hai ✅

👉 English:
If this appears → setup is correct ✅

-------------------------------------------

🔹 Step 5: Clone Repository using SSH

Command:
git clone git@github.com:username/repo-name.git

👉 HinEnglish:
Repo direct machine me clone ho jayega (no password)

👉 English:
Repository will be cloned without password

-------------------------------------------

🔹 Step 6: Push Changes

Command:
cd repo-name
git add .
git commit -m "your message"
git push origin main

👉 HinEnglish:
Ab bina password ke push hoga 😎

👉 English:
Now push works without password 😎

-------------------------------------------

⚠️ Common Errors

1. Permission denied (publickey)
👉 SSH key properly configured nahi hai

2. Repository not found
👉 Repo URL ya access galat hai

3. Host authenticity warning
👉 First time normal hai → type "yes"

-------------------------------------------

🧠 Easy Summary

👉 HinEnglish:
Key generate → GitHub me add → test → clone

👉 English:
Generate key → add to GitHub → test → clone

-------------------------------------------

🎯 Interview Answer

To clone a repository using SSH, we generate an SSH key pair,
add the public key to GitHub, verify the connection,
and then use the SSH URL to clone the repository.
This enables secure and password-less Git operations.

===========================================
*/