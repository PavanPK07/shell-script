#!/bin/bash

# Threshold for disk usage
THRESHOLD=80

# Check disk usage of all partitions
df -h | awk 'NR>1 {print $5 " " $1}' | while read output
do
    usage=$(echo $output | awk '{print $1}' | sed 's/%//')  # remove % sign
    partition=$(echo $output | awk '{print $2}')
    
    if [ "$usage" -ge "$THRESHOLD" ]; then
        echo "ALERT: Partition $partition is ${usage}% full!" 
        # Optional: send email alert
        # echo "Partition $partition is ${usage}% full!" | mail -s "Disk Alert" user@example.com
    fi
done
