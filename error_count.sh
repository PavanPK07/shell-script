#!/bin/bash

log_file="/var/log/syslog"

if [ ! -f "$log_file" ]; then
    echo "Log file not found: $log_file"
    exit 1
fi

# Count errors
error_count=$(grep -i "error" "$log_file" | wc -l)

echo "Total errors in $log_file: $error_count"
