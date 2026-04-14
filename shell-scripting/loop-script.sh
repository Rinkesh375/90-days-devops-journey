#!/bin/bash

: << 'INFO'
============================================================
Script Name : loop-demo.sh

Purpose :
This script demonstrates how to:
- Create and use a function
- Use a for loop in shell scripting
- Print output multiple times

How It Works :
1. A function 'printNum' is defined
2. Inside the function, a loop runs from 1 to 5
3. Each iteration prints a message with the number

Concepts Used :
- Functions in Bash
- C-style for loop
- Loop control (initialization, condition, increment)
============================================================
INFO


# 🚀 Function Definition
printNum() {

  # 🔁 C-style for loop
  # Syntax: for (( initialization ; condition ; increment ))
  # num=1       → start from 1
  # num<=5      → run loop until 5
  # num++       → increase num by 1 each iteration
  for (( num=1 ; num<=5 ; num++ ))
  do
    # 🖨️ Print message with current loop value
    echo "Hello $num"
  done
}


# ▶️ Function Call (invokes the function)
printNum