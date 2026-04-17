#!/bin/bash

: << 'COMMENT'
============================================================
Script Name : install-package.sh

Description :
This script installs a Linux package using apt-get.
The package name is passed as a command-line argument.

Usage :
./install-package.sh <package-name>

Example :
./install-package.sh nginx

Concepts Used :
- Command-line arguments ($1)
- Conditional checks
- Package installation using apt-get
============================================================
COMMENT


# Step 1: Read package name from first argument
PACKAGE_NAME=$1


# Step 2: Validate input (check if argument is provided)
if [ -z "$PACKAGE_NAME" ]; then
  echo "❌ Error: No package name provided"
  echo "👉 Usage: ./install-package.sh <package-name>"
  exit 1   # Stop script execution
fi


# Step 3: Inform user
echo "📦 Installing package: $PACKAGE_NAME"


# Step 4: Update package list (recommended before install)
sudo apt-get update > /dev/null


# Step 5: Install the package
# NOTE: Using double quotes for variable expansion
sudo apt-get install "$PACKAGE_NAME" -y > /dev/null


# Step 6: Confirm completion
echo "✅ Installation of '$PACKAGE_NAME' completed successfully"
