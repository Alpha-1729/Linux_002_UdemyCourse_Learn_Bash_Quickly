#!/bin/bash
# Automating User Management

:'
>>>> In this script, we create the same user on all available servers.
>>>> OpenSSL
        OpenSSL is a cryptography software library or toolkit that makes communication over computer networks more secure.

        sudo usermod --password $password $usrname
            The usermod command expects the password in an encrypted format.
            For this, we use the OpenSSL library.
>>>> Here Document
        Reference links:
            https://linuxhint.com/bash-heredoc-tutorial/
            https://tldp.org/LDP/abs/html/here-docs.html
>>>> Getting the ID of a user.
        id user
>>>>
'

# Creating an encrypted password using OpenSSL.
# This format is the same as the one stored in /etc/shadow.
# -1 indicates the MD5-based password algorithm.
# Refer to the man page for openssl-passwd.
openssl passwd -1 "yourpassword"

# Storing the encrypted password in an environment variable.
export MYPASS=$(openssl passwd -1 "fsociety")

# Replace the dollar sign in the password hash with an escape character.
# If you SSH into another machine and echo the MYPASS variable, 
# it will be in a different format after replacing the dollar symbol.
MYPASS=${MYPASS//$/'\$'}

# Log into other servers with the password in the environment variable.
ssh ecorp1 "echo $MYPASS"

# Avoid typing the passphrase when logging into a new server.
# Store the password in an ssh-agent.
eval `ssh-agent`
ssh-add  # Type the password here.

# Actual script to add user on all servers.
servers=$(cat inventory.txt)

echo -n "Please enter username: "
read usrname
echo -n "Please enter user ID: "
read uid

for i in $servers; do
    echo $i
    # The following is an example of the Here Document.
    ssh $i << EOC
            sudo useradd -m -u $uid $usrname
            sudo usermod --password $MYPASS $usrname
EOC
    if [ $? -eq 0 ]; then
        echo "$usrname was successfully added on $i"
    else
        echo "Error adding $usrname on $i"
    fi
done

echo "Hello World"
