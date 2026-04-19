#!/bin/bash
: << 'COMMENT'
  This file is to create a user and using shell script
  and set password 
  taking userName and will be done from terminal
COMMENT


read -p "What is userName" userName

read -p "What is Password" userPassword


sudo useradd -m "$userName"

echo -e "$userPassword\n$userPassword" | sudo passwd "$userName"


#user creation ended susscessfully

echo "User:$userName Password:$userPassword"
