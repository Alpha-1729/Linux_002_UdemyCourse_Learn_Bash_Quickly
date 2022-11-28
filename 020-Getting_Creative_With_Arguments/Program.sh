#!/bin/bash
# Getting Creative With Arguments

:'
>>>>
>>>>
>>>>
>>>>
'

# Turn hard commands into simple bash script.
# Find the location of a file using this script.
# 2> dev/null is used to redirect error.(Don't show any errors.)
find / -iname $1 2> /dev/null

echo "Hello World"