#!/bin/bash
# Bash Test Conditions

:'
>>>> If you want to know all the test condition in bash.
        man test (In terminal)
>>>> Some test conditions in bash are added in the image.
>>>>
>>>>
'

if [ $# -ne 1 ]; then
    echo "Invalid number of arguments."
    exit 1
fi

file=$1

if [ -f $file ]; then
    echo "$file is a regular file."
elif [ -d $file ]; then
    echo "$file is a directory."
elif [ -L $file ]; then
    echo "$file is a soft link."
else
    echo "$file does not exist."
fi

echo "Hello World"
