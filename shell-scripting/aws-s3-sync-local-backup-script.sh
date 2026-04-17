#!/bin/bash

: << 'INFO'
============================================================
Script Name : backup-script.sh

Purpose :
This script creates a backup (zip file) of a given source
directory, stores it in a destination directory, and then
syncs the backup folder to an AWS S3 bucket.

How It Works :
1. Takes source and destination paths as arguments
2. Validates that both inputs are provided
3. Generates a timestamp for unique backup naming
4. Compresses the source directory into a zip file
5. Moves the zip file to the destination directory
6. Syncs the destination folder with AWS S3 bucket

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
- aws s3 sync for cloud backup

Why this script is useful :
- Automates backup process
- Prevents overwriting using timestamp
- Enables cloud backup (S3)
- Useful in DevOps / production environments
============================================================
INFO


# 📥 Step 1: Read arguments
# $1 → source directory
# $2 → destination directory
src=$1
des=$2


# ⚠️ Step 2: Validate input
# -z checks if variable is EMPTY (zero length string)
# WHY: Prevents script from running with missing inputs
if [ -z "$src" ] || [ -z "$des" ]; then
  echo "❌ Error: Please provide source and destination paths"
  echo "👉 Usage: ./backup-script.sh <source> <destination>"
  exit 1   # Stop script execution if input is invalid
fi


# 📅 Step 3: Generate timestamp
# Format: YYYY-MM-DD-HH-MM-SS
# WHY: Ensures each backup file is unique (no overwrite)
date=$(date '+%Y-%m-%d-%H-%M-%S')


# 📦 Step 4: Create zip backup
# -r → recursively include all files and subfolders
# "$src" → ensures correct path handling (safe for spaces)
# > /dev/null → hides zip command output (clean logs)
zip -r "backup-$date.zip" "$src" > /dev/null


# 🚚 Step 5: Move backup to destination
# WHY: Keeps backups organized in a separate folder
mv "backup-$date.zip" "$des"


# ✅ Step 6: Local success message
echo "Backup completed successfully!"
echo "📁 File: backup-$date.zip"
echo "📍 Location: $des"


# ☁️ Step 7: Sync with AWS S3
# aws s3 sync → syncs local folder with S3 bucket
# It uploads new files and updates changed ones
# WHY: Provides remote/cloud backup for safety
aws s3 sync "$des" s3://junoon-s3-01


# ✅ Step 8: Final confirmation
echo "Successfully synced local backup folder to S3 bucket: junoon-s3-01"