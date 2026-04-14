#!/bin/bash

# ==========================================
# Script Name: script3.sh
# Purpose: Create a new user and set password
# ==========================================

: << 'COMMENT'
This script performs the following steps:

1. Takes username input from user
2. Takes password input from user
3. Creates a new Linux user with a home directory
4. Sets the password for that user

NOTE:
- Password is taken as plain input (visible on screen)
- 'passwd' command is interactive, so we simulate input using echo
COMMENT


# ==============================
# Take username input
# ==============================
# -p allows prompt message in same line
read -p "What is userName: " userName


# ==============================
# Take password input
# ==============================
# (Currently visible while typing - not secure)
read -p "What is Password: " userPassword


# ==============================
# Create new user
# ==============================
# -m → creates home directory (/home/username)
# sudo → required for user creation (admin privilege)
sudo useradd -m "$userName"


# ==============================
# Set password for the user
# ==============================
# passwd command is interactive (asks password twice)
# We simulate that by sending password twice using echo:
#
# Line1 → password
# Line2 → confirm password
#
# -e enables interpretation of \n (newline)
echo -e "$userPassword\n$userPassword" | sudo passwd "$userName"


# ==============================
# Final message
# ==============================
# Displays created user details
# (⚠️ Printing password is NOT secure in real systems)
echo "User: $userName Password: $userPassword"