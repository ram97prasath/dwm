#!/bin/sh
while true; do
	# Get the current volume level (using pactl)
	volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')

	time=$(date +"%I:%M %p")

	date=$(date +"%b, %d (%a)")

	# Update the status bar with the volume level
	xsetroot -name "󰕾 ${volume}% | 󰃭 ${date} | 󰥔 ${time} |"

	# Wait for a few seconds before updating again
	sleep 1
done
