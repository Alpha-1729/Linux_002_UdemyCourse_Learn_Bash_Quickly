#!/bin/bash
# Creating A Linux Vm On Azure

:'
>>>> Create an azure account from the following link.
        Link: https://azure.microsoft.com/en-in/free/
        Popular services will be free for 12 months.
>>>> For students use the following link.
        Link: https://azure.microsoft.com/en-in/free/
        No credit cards required.
        Only student verification.
>>>> Go to portal.azure.com after creating an account.
>>>> Creating virtual machine.
        Search for <virtual machine> and follow the steps after that.
>>>> Logging into the virtual machine.
        In Linux and Mac OS
                ssh username@public_ip_address
        In Windows
                Open power shell and use the following command.
                        ssh username@public_ip_address
                Using putty software.
                        Link: https://www.putty.org/
                Using Cygwin software.
                        Link: https://www.cygwin.com/install.html
                Using Cmder software.
                        Link: https://cmder.app/

'
# Will print the current user.
whoami

# Display the duration in which the system is in on condition.
uptime

# Displays the manufacturer of the machine.
# dmidecode also referred as Desktop Management Interface table decoder, record data from DMI table and produce it in human readable format.
sudo dmidecode grep -i microsoft

echo "Hello World"