#!/bin/bash
# Finding Substring

:'
>>>> Find substring syntax
        expr index string substr
>>>> expr index gives some random outout.
        solution:
            expr index shows the index of a character inside of a SUBSTR where is its first occurrence in the STRING and only will show the nearest character to the beginning of the STRING.
>>>>
>>>>
'
str="Bash is cool"
word="Cool"

# Indexing starts with 1.
# Returns the index of the starting of the substring.
# If there is no match, it will return 0.
expr index "$str" "$word"
echo "Hello World"