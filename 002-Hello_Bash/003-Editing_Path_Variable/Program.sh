#!/bin/bash
# Editing Path Variable

: '
>>>> Path Variable:
        The PATH variable defines the directories where the shell looks for executable commands.
>>>>
>>>>
>>>>
'

# To print the current values in the PATH variable.
echo $PATH # Directories are separated by colons.

# To add a new directory to the PATH variable.
export PATH=$PATH:/home/elliot/home/scripts

# After updating the PATH variable, you can run the script without specifying the current directory.
Program.sh

echo "Hello World"
