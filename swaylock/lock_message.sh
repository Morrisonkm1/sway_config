#!/bin/bash

# Get the current date and time
datetime=$(date +"%A, %B %d, %Y %I:%M %p")

# Generate the message
message="Locked\n\n${datetime}"

# Write the message to a temporary file
echo -e "${message}" > /tmp/lock_message.txt
