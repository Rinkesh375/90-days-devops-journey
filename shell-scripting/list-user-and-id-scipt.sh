#!/bin/bash

: << 'COMMENT'
This script lists all user accounts on the system
and displays their Username and UID.

COMMENT




# ==============================
# Step 1: Display header
# ==============================
echo "User Accounts (Username | UID):"
echo "--------------------------------"


# ==============================
# Step 2: Read /etc/passwd and extract fields
# ==============================
# -F:   → sets delimiter as ':'
# $1    → username
# $3    → UID
awk -F: '{print $1 " | " $3}' /etc/passwd