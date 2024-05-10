#!/bin/bash

# Take a screenshot
grim /tmp/screenshot.png

# Blur the screenshot
convert /tmp/screenshot.png -blur 0x5 /tmp/screenshot_blurred.png

# Set the blurred screenshot as the background for swaylock
swaylock -i /tmp/screenshot_blurred.png
