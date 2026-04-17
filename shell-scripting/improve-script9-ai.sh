#!/bin/bash

: << 'COMMENTS'
============================================================
Script Name : script9.sh

Description :
Checks whether a username exists in the system.

Improvements :
- Clean command usage
- Input validation
- Exact match search
- Better output messages
============================================================
COMMENTS


echo "🚀 Script Started"

# Step 1: Take username input
read -p "Enter username: " userName


# Step 2: Validate input
if [ -z "$userName" ]; then
  echo "❌ Username cannot be empty"
  exit 1
fi


# Step 3: Search username in /etc/passwd
# -w ensures exact match
COUNT=$(grep -w "$userName" /etc/passwd | wc -l)


# Step 4: Show count
echo "🔢 Count value is: $COUNT"


# Step 5: Final result
if [ "$COUNT" -gt 0 ]; then
  echo "✅ User exists"
else
  echo "❌ User does not exist"
fi