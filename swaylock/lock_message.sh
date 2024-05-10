#!/bin/bash

# Take a screenshot
grim /tmp/screenshot.png

# Blur the screenshot
convert /tmp/screenshot.png -blur 0x5 /tmp/screenshot_blurred.png

# Set the blurred screenshot as the background for swaylock
swaylock -i /tmp/screenshot_blurred.png

[duckcube@knight swaylock]$ cat lock_message.sh 
#!/bin/bash

# Get the current date and time
datetime=$(date +"%A, %B %d, %Y %I:%M %p")

# Generate the message
message="Locked\n\n${datetime}"

# Write the message to a temporary file
echo -e "${message}" > /tmp/lock_message.txt
