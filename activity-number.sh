#!/bin/bash

HTML_FILE="gc.html"

grep "activity-name-edit" $HTML_FILE  | sed 's/.*href=\"\(.*\)\" class.*/\1/' | cut -d '/' -f6 > activities.txt
