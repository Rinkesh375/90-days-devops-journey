#!/bin/bash

# ==========================================================
# Script Name : user-demo-args.sh
# Description :
#   Demonstrates user creation, password setup, deletion,
#   and verification using positional arguments.
#
# Usage:
#   ./script.sh <username> <password>
#
# Example:
#   ./script.sh rinkesh 1234
# ==========================================================


# ==========================================================
# Step 1: Validate arguments
# ==========================================================
# $# → total number of arguments passed to script
if [ $# -ne 2 ]; then
  echo "❌ Usage: $0 <username> <password>"
  exit 1
fi

# ==========================================================
# Step 2: Create user
# ==========================================================
# $1 → username
# useradd -m → creates user + home directory
sudo useradd -m "$1"

echo "✅ User '$1' created successfully"


# ==========================================================
# Step 3: Set password (simulate interactive input)
# ==========================================================
# passwd normally asks:
#   New password:
#   Retype new password:
#
# echo -e "$2\n$2"
#   → sends password twice (for confirmation)
#
# pipe (|)
#   → sends echo output as input to passwd
echo -e "$2\n$2" | sudo passwd "$1"

echo "🔐 Password set for user '$1'"


# ==========================================================
# Step 4: Verify user exists
# ==========================================================
# grep "^$1:" → checks exact username in /etc/passwd
if grep -q "^$1:" /etc/passwd; then
  echo "✔ User '$1' exists in system"
else
  echo "❌ User '$1' not found"
fi


# ==========================================================
# Step 5: Delete user
# ==========================================================
# userdel -r → removes user + home directory
sudo userdel -r "$1"

echo "🗑️ User '$1' deleted"


# ==========================================================
# Step 6: Verify deletion
# ==========================================================
if grep -q "^$1:" /etc/passwd; then
  echo "❌ User '$1' still exists (deletion failed)"
else
  echo "✅ User '$1' successfully removed"
fi


# ==========================================================
# Step 7: Explanation of arguments (for learning)
# ==========================================================
echo "----------------------------------------"
echo "Script Name  : $0"
echo "Username ($1): $1"
echo "Password ($2): $2"
echo "Total Args   : $#"
echo "All Args     : $@"
echo "----------------------------------------"