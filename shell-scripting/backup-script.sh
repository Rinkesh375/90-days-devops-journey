#!/bin/bash

: << 'INFO'
============================================================
Script Name : backup-script.sh

Purpose :
This script creates a backup (zip file) of a given source
directory and stores it in a destination directory.

How It Works :
1. Takes source and destination paths as arguments
2. Validates that inputs are provided
3. Generates a timestamp for unique backup naming
4. Compresses the source directory into a zip file
5. Moves the zip file to the destination directory

Usage :
./backup-script.sh <source_path> <destination_path>

Example :
./backup-script.sh /home/ubuntu/scripts /home/ubuntu/backups

Concepts Used :
- Command-line arguments ($1, $2)
- Input validation using -z
- date command for dynamic filenames
- zip for compression
- mv for moving files

Why this script is useful :
- Automates backup process
- Prevents overwriting using timestamp
- Reusable for any folder
============================================================
INFO


# 📥 Step 1: Read arguments
src=$1    # Source directory to backup
des=$2    # Destination directory where backup will be stored


# ⚠️ Step 2: Validate input
# -z checks if the variable is empty (no value provided)
# WHY: Prevents script from running with missing arguments
if [ -z "$src" ] || [ -z "$des" ]; then
  echo "❌ Error: Please provide source and destination paths"
  echo "👉 Usage: ./backup-script.sh <source> <destination>"
  exit 1
fi


# 📅 Step 3: Generate timestamp
# Format: YYYY-MM-DD-HH-MM-SS
# WHY: Ensures each backup file has a unique name
date=$(date '+%Y-%m-%d-%H-%M-%S')


# 📦 Step 4: Create zip backup
# -r → recursively include all files and subfolders
# "$src" ensures correct path handling (safe for spaces)
zip -r "backup-$date.zip" "$src" > /dev/null


# 🚚 Step 5: Move backup to destination
# WHY: Keeps backups organized in a separate folder
mv "backup-$date.zip" "$des"


# ✅ Step 6: Success message
echo "Backup completed successfully!"
echo "📁 File: backup-$date.zip"
echo "📍 Location: $des"