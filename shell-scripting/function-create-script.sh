#!/bin/bash

: << 'COMMENTS'
============================================================
Purpose :
- Create a Linux user using a function
- Demonstrate input validation and error handling

Important Concepts Explained :

1. -z "$var"
   → Checks if a variable is EMPTY (zero length)
   → Used to validate user input before processing

2. return 1
   → Stops function execution immediately
   → Sends FAILURE status to caller

3. $? (exit status)
   → Stores result of last executed command
   → 0 = success, non-zero = failure

Why these are important:
- Prevent invalid input (like empty username)
- Avoid running wrong commands
- Enable proper error handling and debugging
============================================================
COMMENTS


createAndPrintUser() {

  # Step 1: Take username input from user
  read -p "Enter username: " username


  # Step 2: Input validation using -z
  # -z checks if the string length is zero (empty input)
  # WHY: To prevent creating a user with empty or invalid name
  if [ -z "$username" ]; then
    echo "❌ Username cannot be empty"

    # return 1:
    # - Immediately stops the function execution
    # - Prevents further commands (like useradd) from running
    # - Sends failure status (1) back to caller
    return 1
  fi


  # Step 3: Create user with home directory
  # "$username" ensures correct variable expansion and safety
  sudo useradd -m "$username"


  # Step 4: Check result of last command using $?
  # $? holds exit status of 'useradd' command
  # WHY: To verify if user creation was successful or failed
  # the last executed command was successful
  if [ $? -eq 0 ]; then
    echo "✅ User '$username' created successfully"
  else
    echo "❌ Failed to create user"
  fi
}


# Step 5: Call the function
createAndPrintUser


# Step 6: Check function result using $?
# $? now contains return status of function
# WHY: To detect if function failed (return 1) or succeeded (return 0)
if [ $? -ne 0 ]; then
  echo "⚠️ Function execution failed"
fi