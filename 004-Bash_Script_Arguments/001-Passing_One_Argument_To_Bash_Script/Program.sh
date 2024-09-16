#!/bin/bash
# Passing One Argument To Bash Script

: '
>>>>
>>>>
>>>>
>>>>
'

# < is used to redirect input to the `wc` command.
# $1 is the first argument passed to the script.
nline=$(wc -l < $1)
echo "There are $nline lines in $1"

echo "Hello World"
