#!/bin/bash

# ==========================================================
# Script Name : user-demo-args.sh
# Description :
#   This script demonstrates:
#   1. Taking username & password as arguments
#   2. Creating a user
#   3. Setting password automatically
#   4. Deleting the user
#   5. Verifying whether user is deleted or not
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
# $# → total number of arguments passed
# We expect exactly 2 arguments: username and password

if [ $# -ne 2 ]; then
  echo "❌ Usage: $0 <username> <password>"
  exit 1   # Stop script if arguments are incorrect
fi


# Store arguments in variables (better readability)
USERNAME=$1
PASSWORD=$2


# ==========================================================
# Step 2: Create user
# ==========================================================
# useradd -m → creates user + home directory

sudo useradd -m "$USERNAME"

# Check if user creation was successful
if [ $? -eq 0 ]; then
  echo "✅ User '$USERNAME' created successfully"
else
  echo "❌ Failed to create user"
  exit 1
fi


# ==========================================================
# Step 3: Set password (non-interactive way)
# ==========================================================
# passwd command normally asks input manually
# echo -e "$PASSWORD\n$PASSWORD"
#   → sends password twice (for confirmation)

echo -e "$PASSWORD\n$PASSWORD" | sudo passwd "$USERNAME"

# Check if password was set successfully
if [ $? -eq 0 ]; then
  echo "🔐 Password set for user '$USERNAME'"
else
  echo "❌ Failed to set password"
  exit 1
fi


# ==========================================================
# Step 4: Delete user
# ==========================================================
# userdel → deletes user
# (Note: without -r, home directory may remain)

sudo userdel "$USERNAME"

# Check if deletion was successful
if [ $? -eq 0 ]; then
  echo "🗑️ User '$USERNAME' deleted successfully"
else
  echo "❌ Failed to delete user"
  exit 1
fi


# ==========================================================
# Step 5: Verify user deletion
# ==========================================================
# /etc/passwd → contains all users
# grep → search username
# wc → count lines/words

COUNT=$(cat /etc/passwd | grep "^$USERNAME:" | wc -l)

echo "🔍 User occurrence count: $COUNT"

if [ "$COUNT" -eq 0 ]; then
  echo "✅ Verification Passed: User deleted successfully"
else
  echo "❌ Verification Failed: User still exists"
fi