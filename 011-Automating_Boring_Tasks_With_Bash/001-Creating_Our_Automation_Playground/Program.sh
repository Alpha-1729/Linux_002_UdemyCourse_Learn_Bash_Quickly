#!/bin/bash
# Creating Our Automation Playground

:'
>>>> Created four new virtual machines (servers) in Azure.
        These are the virtual machine names under the same resource group in Azure:
        ecorp1
        ecorp2
        ecorp3
        ecorp4

        You can SSH into any of these using:
        ssh vm_name

>>>> If you are using VirtualBox:
        You need to add these servers to the /etc/hosts file
        so that you can SSH using the names.

>>>> Added SSH key authentication to all four newly created servers.
        This way, you wont need to type the password each time.

>>>>
>>>>
'

# Generate SSH key.
ssh-keygen

# Copy the generated SSH key to all four servers.
# You will need to enter the password the first time you connect.
ssh-copy-id ecorp1
ssh-copy-id ecorp2
ssh-copy-id ecorp3
ssh-copy-id ecorp4

echo "Hello World"
