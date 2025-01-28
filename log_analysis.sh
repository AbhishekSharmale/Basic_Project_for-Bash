#!/bin/bash

# File to be analyzed
LOG_FILE="logfile.txt"

# 1. Count the total number of lines in the log file
LINE_COUNT=$(wc -l < $LOG_FILE)
echo "Total Lines: $LINE_COUNT"

# 2. Count the number of "Error" entries in the log file
ERROR_COUNT=$(grep -c "Error" $LOG_FILE)
echo "Total Errors: $ERROR_COUNT"

# 3. Display the top 3 most common error messages
echo "Top 3 Errors:"
grep "Error" $LOG_FILE | sort | uniq -c | sort -nr | head -n 3

# 4. Extract all users who logged in, and count their occurrences
echo "User Logins:"
awk '{if ($2 == "logged") print $1}' $LOG_FILE | sort | uniq -c

# 5. Show the first 3 log entries from the log file
echo "First 3 log entries:"
head -n 3 $LOG_FILE

# 6. Show the last 3 log entries from the log file
echo "Last 3 log entries:"
tail -n 3 $LOG_FILE

# 7. Remove the log file after analysis (optional)
# rm $LOG_FILE
