#!/bin/bash

# Read input from the command line
read entry
current_date=$(date '+%Y-%m-%d:%H:%M:%S')

echo $current_date \>\> $entry >> Diary.txt
