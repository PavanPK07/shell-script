#!/bin/bash

# Prompt user for password silently
read -sp "Enter your password: " password
echo    # Move to a new line

# Optionally confirm the password
read -sp "Confirm your password: " password2
echo

if [ "$password" == "$password2" ]; then
    echo "Password set successfully!"
else
    echo "Passwords do not match. Try again."
fi
