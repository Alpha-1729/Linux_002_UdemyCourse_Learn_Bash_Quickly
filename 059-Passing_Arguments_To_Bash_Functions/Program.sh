#!/bin/bash
# Passing Arguments To Bash Functions

:'
>>>> Arguments are supplied in the function same like passing arguments to the scripts.
        $1 -> means the first arguments passed to the function, when it is called.
>>>> $1 value in the function and $1 in the outside scope of the function is different.
>>>>
>>>>
'

function is_even() {
    if [ $(($1 % 2)) -eq 0 ]; then
        echo "$1 is even"
    else
        echo "$1 is odd"
    fi
}

is_even 2
is_even 3

echo "Hello World"