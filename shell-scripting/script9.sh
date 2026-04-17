#!/bin/bash

: << COMMENTS
THis is for explation comments
COMMENTS


echo "Script Started"

# Taking username input from user
read -p "what is userName: " userName

# Counting occurrences of username in /etc/passwd
COUNT=$(cat /etc/passwd | grep $userName | wc | awk '{print $1}')

# Printing count
echo "count value is $COUNT"