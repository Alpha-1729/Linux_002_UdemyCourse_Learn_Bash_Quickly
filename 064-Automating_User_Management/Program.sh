#!/bin/bash
# Automating User Management

:'
>>>> In this we create same user in the all the available servers.
>>>> Openssl
        OpenSSL is a cryptography software library or toolkit that makes communication over computer networks more secure.
>>>> Here Document
        Reference link:
            https://linuxhint.com/bash-heredoc-tutorial/
            https://tldp.org/LDP/abs/html/here-docs.html
>>>>
'

# Creating a encrypted password using openssl.
openssl passwd -1 "yourpassword"

# Storing the encrypted password in an environment variable.
export MYPASS=$(openssl passwd -1 "fsociety")

# Replace the dollar sign in the password hash with escape character.
MYPASS=${MYPASS//$/'\$'}

# Log into other servers with the password in the environment variable.
ssh ecorp1 "echo $MYPASS"

# Storing the password in a ssh-agent
eval `ssh-agent`
ssh-add  # Type the password here.

# Actual script.
servers=$(cat inventory.txt)

echo -n "Please enter username: "
read usrname
echo -n "Please enter user id: "
read uid

for i in $servers; do
    echo $i
    # The below line is an exaple of the Here Document.
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