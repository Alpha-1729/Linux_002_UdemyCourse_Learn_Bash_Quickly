#!/bin/bash
# Passing One Argument To Bash Script

:'
>>>>
>>>>
>>>>
>>>>
'
# < is used to redirect the input to the wc command.
nline=$(wc -l < $1)
echo "There are $nline lines in $1 "

echo "Hello World"