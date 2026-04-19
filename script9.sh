#!/bin/bash





: << COMMENTS


THis is for explation comments

COMMENTS




echo "Script Started"


read -p "what is userName: " userName


COUNT=$(cat /etc/passwd | grep $userName | wc | awk '{print $1}')


echo "count value is $COUNT"
