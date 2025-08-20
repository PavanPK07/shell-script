#!/bin/bash

log_dir="/var/log/myapp"
days_old=30

# Find and delete files older than 30 days
find "$log_dir" -type f -name "*.log" -mtime +$days_old -exec rm -f {} \;

echo "Old logs older than $days_old days have been deleted from $log_dir."
