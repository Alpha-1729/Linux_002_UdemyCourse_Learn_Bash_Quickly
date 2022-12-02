#!/bin/bash
# Bash Challenge Remove Asterisk From String

:'
>>>> Challenge:
        Ask user to input a string with asterisks.
        Remove all asterisks from the string.
        Change all letters in the string to upper case.
        Output the updated string to the terminal.
>>>>
>>>>
>>>>
'

echo -n "Please enter a string: "
read str1
str1=${str1//\*}
str1=${str1^^}
echo "Updated string is: $str1"

echo "Hello World"