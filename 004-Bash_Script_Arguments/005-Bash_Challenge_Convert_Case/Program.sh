#!/bin/bash
# Bash Challenge Convert Case

: '
>>>> Create a bash script named `upper.sh` to display the content of a file in uppercase.
>>>> 
>>>> The `tr` command is a utility for translating or deleting characters:
>>>> - `[:lower:]` represents all lowercase letters.
>>>> - `[:upper:]` represents all uppercase letters.
>>>> 
>>>> In this script:
>>>> - `cat $1` reads the content of the file specified by the first argument ($1).
>>>> - `tr [:lower:] [:upper:]` converts all lowercase letters in the file content to uppercase.
>>>>
>>>>
'
echo "Displaying the content of $1 in upper case."
cat $1 | tr [:lower:] [:upper:]

echo "Hello World"