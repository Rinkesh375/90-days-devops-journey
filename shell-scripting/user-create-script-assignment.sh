#!/bin/bash

: << 'COMMENT'
This is Train with subham shell scripts assignment
COMMENT

# Check option
if [[ "$1" != "-c" && "$1" != "--create" ]]; then
  echo "Usage: $0 -c | --create"
  exit 1
fi

# Input
read -p "UserName: " userName
read -s -p "Password: " password
echo

# Validation
if [ -z "$userName" ]; then
  echo "UserName cannot be empty."
  exit 1
fi

if [ -z "$password" ]; then
  echo "Password cannot be empty."
  exit 1
fi

# Check user exists
if grep -q "^$userName:" /etc/passwd; then
  echo "User already exists."
  exit 1
fi

# Create user
sudo useradd -m "$userName"

# Set password
echo "$userName:$password" | sudo chpasswd

# Success message
echo "User '$userName' created successfully."