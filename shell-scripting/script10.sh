#!/bin/bash

echo "Script Started"

read -p "Enter username: " userName

COUNT=$(grep -w "$userName" /etc/passwd | wc -l)

echo "Count is: $COUNT"

echo "----- Testing Conditions -----"

# 1. Equal (numeric)
if [ "$COUNT" -eq 0 ]; then
    echo "-eq → User NOT found"
else
    echo "-eq → User exists"
fi

# 2. Not equal
if [ "$COUNT" -ne 0 ]; then
    echo "-ne → User exists"
else
    echo "-ne → User NOT found"
fi

# 3. Greater than
if [ "$COUNT" -gt 0 ]; then
    echo "-gt → User found"
else
    echo "-gt → User NOT found"
fi

# 4. Less than
if [ "$COUNT" -lt 1 ]; then
    echo "-lt → User NOT found"
else
    echo "-lt → User exists"
fi

# 5. Greater than or equal
if [ "$COUNT" -ge 1 ]; then
    echo "-ge → User exists"
fi

# 6. Less than or equal
if [ "$COUNT" -le 0 ]; then
    echo "-le → User NOT found"
fi

# 7. String comparison (just for learning)
if [ "$userName" == "ubuntu" ]; then
    echo "== → Username is ubuntu"
else
    echo "== → Username is not ubuntu"
fi