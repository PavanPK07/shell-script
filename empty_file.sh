#!/bin/bash

# Directory to search
TARGET_DIR="/path/to/directory"

# Find empty files
echo "Searching for empty files in $TARGET_DIR..."
find "$TARGET_DIR" -type f -empty -print
