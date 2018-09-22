## Get all FIT files from Garmin Connect
I don't find how to download all my ".fit" files of my Garmin activities. I write some scripts to help me doing this boring task.

#### Get the UID of every activity
1. Go to "https://connect.garmin.com/modern/"
2. Click on "Activities"
3. Scroll down again and again to display all activities you want to save
4. Right-click -> Save Page As... or Ctrl-s to save the HTML with the name "gc.html"
5. Run the script "activity-number.sh", the output file "activities.txt" must contain the UID of every activity

#### Check on "activities.txt"
1. On the "Activities" page of Garmin Connect, click on the wheel > Export to CSV
2. Open the CSV file and note the number of activities that is the number of lines - 1 (the header)
3. The number of lines of "activities.txt" (wc -l activities.txt)  must be equal to the number of activities in the CSV file

#### Manually download FIT files with the download helper
1. Create the folder "GarminConnect"
2. Run the script "download-links.sh"
3. The links to the unsaved activities are located to "missing.txt"
4. Open every link in "missing.txt" and save the activity (.fit, .gpx, etc.) to "GarminConnect"
5. Run again the script "download-links.sh" to check the missing activity files
6. Read the file "missing.txt" to click on activity links or execute "firefox.sh" to open the 10 last activity links
