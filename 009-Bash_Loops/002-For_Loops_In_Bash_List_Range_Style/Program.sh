#!/bin/bash
# For Loops In Bash List Range Style

:'
>>>> Syntax
        for item in [LIST]; do
            [Commands]
        done
>>>>
>>>>
>>>>
'

# Printing the first 10 numbers from zero.
for i in {0..9}; do
    echo "$i"
done

# Print all the files and folders in the /var/ directory.
for file in /var/*; do
    echo $file
done

echo "Hello World"
