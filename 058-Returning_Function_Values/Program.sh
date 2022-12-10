#!/bin/bash
# Returning Function Values

:'
>>>> Bash function doesnot return any values like in other programming language.
        Bash functions only return only exit status code of last executed command in the function body.
        If exit status code is 0, Which means that the function executed successfully.
        Otherwise it will return an integer between 0 and 255.
>>>>
>>>>
>>>>
'

# Creating a function which will result in an exist status between 0 and 255.
function error() {
    blabla
}

error
echo "The exist status of error() function is: $?"

# Creating a function which will alter the exit status of the function.
function no_error() {
    blabla
    return 0
}

no_error
echo "The exist status of no_error() function is: $?"

echo "Hello World"