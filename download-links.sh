#!/bin/bash

LINK_FILE="activities.txt"
FIT_FOLDER="GarminConnect"
MISSING_FILE="missing.txt"

activity_counter=0
missing_counter=0
rm -rf $MISSING_FILE

while read -r line; do
	nb=$(echo $line | cut -d '/' -f6)
	echo "=== Looking for $nb ==="
	if [ -z "$(ls $FIT_FOLDER | grep $nb)" ]; then
		echo "Not Found"
		echo "https://connect.garmin.com/modern/activity/$nb" >> $MISSING_FILE
		missing_counter=$(( $missing_counter + 1 ))
	else
		activity_counter=$(( $activity_counter + 1 ))
	fi
done < $LINK_FILE
echo "Nb. Detected Activities: $activity_counter / $(( $activity_counter + $missing_counter ))"
echo "    Saved: $(( $activity_counter * 100 / ( $activity_counter + $missing_counter ) ))%"

