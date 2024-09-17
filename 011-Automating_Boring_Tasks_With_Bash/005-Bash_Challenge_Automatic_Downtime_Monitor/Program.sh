#!/bin/bash
# Bash Challenge Automatic Downtime Monitor

:'
>>>> Create a bash script named `outage.sh` that automatically detects if any server in your environment is down.
        Store the hostnames of the servers you want to monitor in a file named `servers.txt`.
        If a server is unreachable, send an email to notify which server is down.
        The script should run every 2 hours.
        Hint: Use `mail` for sending emails and `cron` for scheduling.
>>>>
>>>>
>>>>
'

# Read the list of server hostnames from servers.txt.
servers=$(cat servers.txt)

# Loop through each server in the list.
for i in $servers; do
    # Ping the server once to check if it is reachable.
    # Redirect output to /dev/null and errors to the file specified by $1 (if used).
    ping -c 1 $i >> /dev/null 2>$1
    
    # Check the exit status of the ping command.
    # If it is not zero, it means the server is unreachable.
    if [ $? -ne 0 ]; then
        echo "Sending outage notification email."
        # Send an email alert about the unreachable server.
        echo "$i is unreachable." | mail -s "$i Outage" your_email
    fi
done

echo "Hello World"
