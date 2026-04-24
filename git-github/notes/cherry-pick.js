/*
===========================================
🍒 git cherry-pick (Clear Notes)
===========================================

🧠 Purpose:
Take a specific commit’s changes and apply them to another branch.

👉 Why needed?
Sometimes we don’t want to merge a full branch,
we only need ONE specific commit (bug fix, feature, etc.)

-------------------------------------------
📌 What is Cherry-pick?

👉 HinEnglish:
Cherry-pick ek specific commit ke changes ko utha kar current branch me apply karta hai

👉 English:
Cherry-pick applies changes from a specific commit to the current branch

💡 Important:
- Naya commit create hota hai
- Same commit copy hota hai (new ID ke saath)

-------------------------------------------
🚀 Basic Syntax

git cherry-pick <commit_id>

-------------------------------------------
🧾 Example

👉 Situation:

main:     A --- B --- C
feature:         D --- E

👉 Tumhe sirf commit E chahiye (poora feature branch nahi)

Command:
git checkout main
git cherry-pick E

👉 Result:

main: A --- B --- C --- E'

(E' = copied version of E)

-------------------------------------------
🎯 When to Use?

👉 HinEnglish:

1. Sirf ek bug fix chahiye dusre branch se
2. Hotfix apply karna hai production me
3. Galti se wrong branch me commit ho gaya
4. Selective changes chahiye (full merge nahi)

👉 English:

1. Need a specific bug fix from another branch
2. Apply a hotfix to production
3. Commit was made in wrong branch
4. Need selective changes without full merge

-------------------------------------------
⚠️ Important Clarification

👉 HinEnglish:
Cherry-pick FILE nahi uthata, commit ke changes uthata hai

👉 English:
Cherry-pick does NOT pick a file, it picks the changes from a commit

-------------------------------------------
⚙️ What happens internally?

👉 HinEnglish:
- Git commit ke changes copy karta hai
- Current branch me apply karta hai
- New commit banata hai

👉 English:
- Git copies changes from the commit
- Applies them to current branch
- Creates a new commit

-------------------------------------------
⚠️ Conflict Handling

👉 Kab conflict aata hai?
Jab same lines dono jagah change hui ho

👉 Steps:

1. Run cherry-pick
   git cherry-pick <commit_id>

2. Conflict aayega ❗

3. Files open karo
   >>>>>>> HEAD
   <<<<<<< markers hatao
   correct code rakho

4. Stage changes
   git add .

5. Continue cherry-pick
   git cherry-pick --continue

-------------------------------------------
❌ Abort option

Agar cancel karna ho:

git cherry-pick --abort

👉 HinEnglish:
Process cancel ho jayega

👉 English:
Cherry-pick will be cancelled

-------------------------------------------
⚠️ Important Points

👉 HinEnglish:
- Naya commit ID generate hota hai
- History duplicate ho sakti hai
- Overuse mat karo

👉 English:
- New commit ID is created
- History can duplicate
- Don’t overuse it

-------------------------------------------
🧠 Easy Samajh

👉 HinEnglish:
Cherry-pick = ek commit ka copy-paste

👉 English:
Cherry-pick = copy-paste a commit

-------------------------------------------
🧠 Final Easy Line

👉 HinEnglish:
Pura branch nahi, sirf ek commit chahiye → cherry-pick use karo

👉 English:
Need one commit, not full branch → use cherry-pick

-------------------------------------------
🎯 Interview Answer

👉 HinEnglish:
git cherry-pick ek specific commit ke changes ko current branch me apply karta hai aur ek naya commit create karta hai. Ye tab use hota hai jab hume selective changes chahiye hote hain bina full branch merge kiye.

👉 English:
git cherry-pick applies changes from a specific commit to the current branch and creates a new commit. It is used when selective changes are needed without merging the entire branch.

===========================================
*/