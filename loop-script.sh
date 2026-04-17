#!/bin/bash


: <<INFO 

This scripts all about loop 
in Shell Scripting

INFO



printNum() {
  
   for (( num=1 ; num<=5 ; num++))
   do 
       echo "Hello $num" 
   done	   

}


printNum


