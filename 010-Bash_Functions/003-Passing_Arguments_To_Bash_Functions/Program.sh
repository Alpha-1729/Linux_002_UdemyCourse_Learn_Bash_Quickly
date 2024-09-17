#!/bin/bash
# Passing Arguments To Bash Functions

:'
>>>> Arguments are supplied in the function the same way as passing arguments to scripts.
        $1 -> means the first argument passed to the function when it is called.
>>>> $1 value in the function and $1 in the outside scope of the function is different.
>>>>
>>>>
'

function is_even() {
    # Check if the first argument is even or odd
    if [ $(($1 % 2)) -eq 0 ]; then
        echo "$1 is even"
    else
        echo "$1 is odd"
    fi
}

is_even 2
is_even 3

echo "Hello World"
