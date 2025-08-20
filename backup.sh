#!/bin/bash

# --- Configuration ---
SOURCE_DIR="/path/to/source"      # Directory you want to back up
BACKUP_DIR="/path/to/backup"      # Directory where backups will be stored

# --- Create a timestamp ---
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# --- Backup filename ---
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# --- Create backup ---
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

# --- Optional: Print success message ---
echo "Backup of $SOURCE_DIR completed at $TIMESTAMP"
echo "Saved to: $BACKUP_DIR/$BACKUP_NAME"
