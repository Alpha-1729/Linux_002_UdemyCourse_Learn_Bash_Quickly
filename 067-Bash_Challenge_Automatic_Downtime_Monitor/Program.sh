#!/bin/bash
# Bash Challenge Automatic Downtime Monitor

:'
>>>> Create a bash script named outage.sh that would automatically detect whether a server in your environment is down! Store all your server hostnames that you want to monitor in a file named servers.txt.
        If there is server outage, send an email to yourself specifying which server is unreachable.
        Your script should run every 2 hours.
        Hint: Use mail and cron.
>>>>
>>>>
>>>>
'

servers=$(cat servers.txt)
for i in $servers; do
    ping -c 1 $i >> /dev/null 2>$1
    if [ $? -ne 0 ]; then
        echo "Sending out an outage email."
        echo "$i is unreachable." | mail -s "$i Outage" your_email
    fi
done

echo "Hello World"