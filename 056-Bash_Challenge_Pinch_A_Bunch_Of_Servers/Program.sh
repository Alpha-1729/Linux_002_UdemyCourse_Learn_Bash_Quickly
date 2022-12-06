#!/bin/bash
# Bash Challenge Pinch A Bunch Of Servers

:'
>>>> Create a bash script named subnet.sh that would ping every single server in the 23.227.36.x subnet where x is a number between 0 and 255. If a ping succeeded,  display the statement “Server 23.227.36.x is up and running”. Otherwise, if a ping failed, display the statement “Server 23.227.36.x is unreachable.
>>>>
>>>>
>>>>
'

for((i=0;i<256;i++)); do
    ping -c 1 23.227.36.$i >> /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Server 23.227.36.$i is up and running."
    else
        echo "Server 23.227.36.$i is unreachable."
    fi
done

echo "Hello World"