# Log Analysis Tool

This project provides a simple shell script for analyzing log files, specifically focusing on the frequency of errors, user logins, and basic file analysis operations such as counting lines and extracting specific data.

## Features

- **Total Lines Count**: Counts the total number of lines in the log file.
- **Error Count**: Counts the occurrences of "Error" in the log file.
- **Top 3 Errors**: Displays the top 3 most common error messages.
- **User Logins**: Extracts and counts the number of logins per user.
- **First 3 Log Entries**: Displays the first 3 log entries.
- **Last 3 Log Entries**: Displays the last 3 log entries.
- **File Removal**: Optionally removes the log file after analysis.

## Prerequisites

- A Linux-based system (Ubuntu, CentOS, etc.) with Bash.
- The log file `logfile.txt` should exist and contain sample log entries for analysis.
  - Example log format:
    ```
    user1 logged in
    user2 logged in
    Error: Something went wrong
    user1 logged in
    Error: Connection timeout
    ```

## Usage

1. Clone the repository or create the `log.sh` script file.

2. Make the script executable:
   ```bash
   chmod +x log.sh
# Basic_Project_for-Bash
Project: Log File Analysis Tool
