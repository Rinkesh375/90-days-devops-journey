#!/bin/bash

: << 'COMMENTS'
This script demonstrates:
- Passing arguments to a function
- Using argument as loop starting value
COMMENTS


printNum() {

  start=$1   # First argument passed to function
  end=$2     # Second argument

  # Loop from start to end
  for (( num=start; num<=end; num++ ))
  do
    echo "Hello $num"
  done
}


# Function call with arguments
printNum 1 10
