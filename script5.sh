#!/bin/bash

# ==========================================================
# Script Name : script4.sh
# Description : Create a new Linux user using command-line
#               arguments and set password.
#
# Usage:
#   ./script4.sh <username> <password>
#
# Example:
#   ./script4.sh rinkesh 1234
# ==========================================================

: << 'COMMENT'
LEARNING NOTES:

1. This script uses positional arguments:
   $1 → username
   $2 → password

2. Instead of taking input using "read",
   values are passed directly while running script.

3. "useradd" is used to create user.

4. "passwd" is interactive, so we simulate input
   using echo and pipe (|).

IMPORTANT:
- Password is visible in command → NOT secure
- This approach is only for learning/demo purposes
COMMENT


# ==============================
# Create new user
# ==============================
# $1 → first argument (username)
# -m → creates home directory (/home/username)
# sudo → required because user creation needs root access
sudo useradd -m "$1"


# ==============================
# Set password for the user
# ==============================
# passwd normally asks:
#   Enter new password:
#   Retype new password:
#
# We simulate this by sending:
#   password
#   password
#
# echo -e → enables \n (newline)
# \n → moves to next line (used to repeat password)
#
# pipe (|) → sends echo output as input to passwd
echo -e "$2\n$2" | sudo passwd "$1"


# ==============================
# Final message
# ==============================
# $1 → username
# $2 → password
#
# ⚠️ WARNING:
# Printing password is NOT secure in real systems
echo "User Created Successfully User: $1 Password: $2"


sudo userdel -r "$1"


grep -q "^$1:" /etc/passwd
