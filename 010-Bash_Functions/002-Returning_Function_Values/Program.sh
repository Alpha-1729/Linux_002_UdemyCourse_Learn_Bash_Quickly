#!/bin/bash
# Returning Function Values

:'
>>>> Bash function does not return any values like in other programming languages.
        Bash functions only return the exit status code of the last executed command in the function body.
        If the exit status code is 0, it means that the function executed successfully.
        Otherwise, it will return an integer between 0 and 255.
>>>>
>>>>
>>>>
'

# Creating a function which will result in an exit status between 0 and 255.
function error() {
    blabla
}

error
echo "The exit status of error() function is: $?"

# Creating a function which will alter the exit status of the function.
function no_error() {
    blabla
    return 0
}

no_error
echo "The exit status of no_error() function is: $?"

echo "Hello World"
