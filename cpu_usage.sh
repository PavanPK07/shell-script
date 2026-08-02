#!/bin/bash

threshold=80
log_file="/var/log/cpu_usage_monitor.log"

# Get top 10 CPU-consuming processes (excluding the header)
ps -eo pid,comm,%cpu --sort=-%cpu | sed 1d | head -10 | while read pid cmd cpu
do
    cpu_int=${cpu%.*}   # strip decimal part
    if [ "$cpu_int" -ge "$threshold" ]; then
        echo "$(date) - HIGH CPU USAGE: PID=$pid, CMD=$cmd, CPU=$cpu%" >> "$log_file"
    fi
done
