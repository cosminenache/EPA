#!/bin/bash

# Read input from the command line
read entry
# Get the system date and format it YYYY-MM-DD:HH24:MI:SS
current_date=$(date '+%Y-%m-%d:%H:%M:%S')

# Append sys date and input from the terminat to the diary
echo $current_date \>\> $entry >> Diary.txt
