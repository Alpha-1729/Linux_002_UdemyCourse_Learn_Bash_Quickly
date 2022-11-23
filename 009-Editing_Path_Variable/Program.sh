#!/bin/bash
# Editing Path Variable

:'
>>>> Path variable
        Its a place where your shell would look for command.
>>>>
>>>>
>>>>
'

# Printing the values in the path variable.
echo $PATH    # Colon is the separator.

# Adding new path into the path variable.
export PATH=$PATH:/home/elliot/home/scripts

# After adding the path in the path variable. Run the bash script without specifying the current directory(./Program.sh)
Program.sh

echo "Hello World"