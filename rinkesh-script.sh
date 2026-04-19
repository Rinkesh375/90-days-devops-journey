#!/bin/bash

# ==============================
# Simple Shell Script Demo
# ==============================

# ---- Basic echo statements ----
echo "rinkesh-1"
echo "rinkesh-2"
echo "rinkesh-3"
echo "End Here"

# ---- Create a directory ----
# -p flag ensures:
# 1. No error if folder already exists
# 2. Creates parent directories if needed
mkdir -p creating-folder-sh
echo "Folder Created Successfully."

# ==============================
# User-defined variables
# ==============================

value1="Linux"
value2="SHELL SCRIPTING"
value3="Docker"

# Printing variables (with spaces)
echo "Dynamic values: $value1 , $value2 , $value3"

# Printing variables (clean format)
echo "Dynamic values: $value1, $value2, $value3"

# ==============================
# Predefined (system) variables
# ==============================

echo "System-defined variable example:"
echo "Current user: $USER"

# ==============================
# Taking input from user
# ==============================

# -p allows inline prompt message
read -p "Who is running this script? " fullName
echo "User Name: $fullName"

# Taking multiple inputs in one line
read -p "Enter city, work, and status: " city work day
echo "City: $city | Work: $work | Status: $day"

# ==============================
# Command line arguments
# ==============================

# $@ -> all arguments passed
echo "All arguments: $@"

# $0 -> script name
echo "Script name: $0"

# $1, $2, $3 -> positional arguments
echo "Argument 1: $1"
echo "Argument 2: $2"
echo "Argument 3: $3"

# $# -> total number of arguments
echo "Total number of arguments: $#"

# ==============================
# Comments in shell script
# ==============================

# Single-line comment example

# Multi-line comment using ':' (null command)
: << 'COMMENT'
This is a multi-line comment
Line 1
Line 2
Line 3
COMMENT

echo "Script execution finished..."
