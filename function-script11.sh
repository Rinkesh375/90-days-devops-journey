#!/bin/bash




: << COMMENTS

 This file all aboout how to
 Create a function and invoke that

COMMENTS


function createAndPrintUser {

read -p "What is your username: " username

sudo useradd -m username

echo "$username created sucessfully"
   


}


createAndPrintUser
