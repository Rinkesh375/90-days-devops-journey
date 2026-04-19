#!/bin/bash

# ==========================================
# Script: create-user.sh
# Purpose: Create a new Linux user securely
# ==========================================

: << 'COMMENT'
This script:
1. Takes username and password as input
2. Creates a new user with home directory
3. Sets password securely using chpasswd
4. Validates input and avoids common mistakes
COMMENT

# ==============================
# Check if script is run as root
# ==============================
if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run this script as root or using sudo"
  exit 1
fi

# ==============================
# Take input from user
# ==============================
read -p "Enter username: " userName

# -s hides password while typing
read -s -p "Enter password: " userPassword
echo

# ==============================
# Validate input
# ==============================
if [ -z "$userName" ] || [ -z "$userPassword" ]; then
  echo "❌ Username or password cannot be empty"
  exit 1
fi

# ==============================
# Check if user already exists
# ==============================
if id "$userName" &>/dev/null; then
  echo "⚠️ User already exists!"
  exit 1
fi

# ==============================
# Create user with home directory
# ==============================
useradd -m "$userName"

# ==============================
# Set password securely
# ==============================
echo "$userName:$userPassword" | chpasswd

# ==============================
# Success message
# ==============================
echo "✅ User '$userName' created successfully!"
