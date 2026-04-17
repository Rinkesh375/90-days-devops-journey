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


if [ $COUNT == 0 ];
then 
	echo "user not found"
else 
        echo "user exists"

fi


if [ $COUNT -eq 0 ];
then
        echo "user not found"
else
        echo "user exists"

fi



if [ $COUNT -gt 0 ];
then
        echo "user found"
else
        echo "user does not exist"

fi


if [ $COUNT -lt 1 ];
then
        echo "user not found"
else
        echo "user exists"

fi
	
