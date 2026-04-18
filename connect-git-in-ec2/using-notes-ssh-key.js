/*
===========================================
🔐 SSH Setup for GitHub (No Password Login)
===========================================

🧠 Purpose:
Use SSH keys instead of username/password for secure GitHub authentication.

👉 Why needed?
GitHub removed password authentication → use SSH or Personal Access Token.

-------------------------------------------
🚀 Step-by-Step Setup
-------------------------------------------

🔹 Step 1: Generate SSH Key

Command:
ssh-keygen -t ed25519 -C "your_email@example.com"

👉 HinEnglish:
Ye command ek SSH key pair generate karta hai (public + private key)

👉 English:
This command generates an SSH key pair (public + private key)

📁 Files created:
- ~/.ssh/id_ed25519      → Private key (⚠️ NEVER share)
- ~/.ssh/id_ed25519.pub  → Public key (GitHub me add karte hain)

💡 Tip:
Enter press karo → default location use hogi
Passphrase optional hai (extra security ke liye)

-------------------------------------------

🔹 Step 2: Copy Public Key

Command:
cat ~/.ssh/id_ed25519.pub

👉 HinEnglish:
Is command se public key terminal me print hogi → copy kar lo

👉 English:
This prints your public key → copy it

-------------------------------------------

🔹 Step 3: Add Key to :contentReference[oaicite:0]{index=0}

Steps:
1. GitHub → Settings
2. SSH and GPG keys
3. Click "New SSH key"
4. Paste copied key
5. Save

👉 HinEnglish:
Ab GitHub tumhari machine ko trusted maan lega

👉 English:
GitHub will now trust your machine

-------------------------------------------

🔹 Step 4: Change Remote URL (HTTPS → SSH)

Command:
git remote set-url origin <ssh-url>

👉 HinEnglish:
Ab GitHub connection SSH se hoga, password nahi puchhega

👉 English:
Now Git will use SSH instead of HTTPS (no password needed)

-------------------------------------------

🔹 Step 5: Test Connection (Recommended)

Command:
ssh -T git@github.com

👉 Expected Output:
Hi username! You've successfully authenticated...

👉 HinEnglish:
Agar ye message aaya → setup successful ✅

👉 English:
If you see this → setup successful ✅

-------------------------------------------

🔹 Step 6: Push Code

Command:
git push origin master

👉 HinEnglish:
Ab bina password ke push hoga 😎

👉 English:
Now you can push without password 😎

-------------------------------------------

⚠️ Common Errors

1. "Permission denied (publickey)"
👉 SSH key properly add nahi hui

2. "Repository not found"
👉 Remote URL galat hai

3. First-time warning:
"The authenticity of host can't be established"
👉 Normal hai → type "yes"

-------------------------------------------

🧠 Easy Summary

👉 HinEnglish:
SSH = secure login without password

👉 English:
SSH = secure authentication without password

-------------------------------------------

🎯 Interview Answer

SSH keys are used for secure authentication with GitHub. 
Instead of passwords, a key pair (public + private) is used. 
The public key is stored on GitHub, and the private key remains on the local machine, enabling secure and password-less Git operations.

===========================================
*/