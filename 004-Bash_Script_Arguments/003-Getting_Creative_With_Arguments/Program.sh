#!/bin/bash
# Getting Creative With Arguments

: '
>>>>
>>>>
>>>>
>>>>
'

# Turn complex commands into a simple bash script.
# Use this script to find the location of a file.
# 2> /dev/null redirects errors (hides any error messages).
find / -iname $1 2> /dev/null

echo "Hello World"
