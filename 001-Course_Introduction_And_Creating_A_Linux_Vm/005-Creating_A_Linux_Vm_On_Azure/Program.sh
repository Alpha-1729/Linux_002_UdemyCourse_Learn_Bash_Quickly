#!/bin/bash
# Creating A Linux Vm On Azure

: '
>>>> Step 1: Create an Azure account
        - Use the following link: https://azure.microsoft.com/en-in/free/
        - Popular services are free for 12 months.
>>>> Step 2: For Students
        - Use this link: https://azure.microsoft.com/en-in/free/students
        - No credit card needed, only student verification required.
>>>> Step 3: Access Azure Portal
        - Go to: https://portal.azure.com after creating an account.
>>>> Step 4: Create a Virtual Machine
        - Search for "Virtual Machine" in the portal and follow the instructions.
>>>> Step 5: Log into the Virtual Machine
        - For Linux/Mac:
                ssh username@public_ip_address
        - For Windows:
                - Open PowerShell and use:
                        ssh username@public_ip_address
                - Alternatively, use the following software:
                        - Putty: https://www.putty.org/
                        - Cygwin: https://www.cygwin.com/install.html
                        - Cmder: https://cmder.app/
'

# Print the current user
whoami

# Show how long the system has been running
uptime

# Show machine manufacturer information (filtered for Microsoft)
sudo dmidecode | grep -i microsoft

# Simple output
echo "Hello World"
