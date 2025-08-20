#!/bin/bash

# Service to monitor
SERVICE_NAME="nginx"
LOG_FILE="/var/log/service_monitor.log"

# Check if service is running
status=$(systemctl is-active "$SERVICE_NAME")

if [ "$status" != "active" ]; then
    echo "$(date) - $SERVICE_NAME is NOT running. Attempting to restart..." >> "$LOG_FILE"
    
    # Try to restart
    systemctl restart "$SERVICE_NAME"
    
    # Check status again
    if [ "$(systemctl is-active "$SERVICE_NAME")" = "active" ]; then
        echo "$(date) - $SERVICE_NAME restarted successfully." >> "$LOG_FILE"
    else
        echo "$(date) - ERROR: $SERVICE_NAME failed to restart!" >> "$LOG_FILE"
    fi
else
    echo "$(date) - $SERVICE_NAME is running normally." >> "$LOG_FILE"
fi
