#!/bin/bash
# Bash Challenge Convert Case

:'
>>>> Create a bash script named upper.sh that would display a file content in upper case letters.
>>>> The tr command is a Linux command-line utility that translates or deletes characters from standard input ( stdin ) and writes the result to standard output ( stdout ). Use tr to perform different text transformations, including case conversion, squeezing or deleting characters, and basic text replacement.
>>>>
>>>>
'
echo "Displaying the content of $1 in upper case."
cat $1 | tr [:lower:] [:upper:]

echo "Hello World"