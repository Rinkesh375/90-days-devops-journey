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



sudo userdel "$1"



cat /etc/passwd | grep $1 | wc

echo "if you see word count(word count === 0) it means user deleted successfully."
