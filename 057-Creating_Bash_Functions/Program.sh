#!/bin/bash
# Creating Bash Functions

:'
>>>> Two ways of creating functions in bash.
        1
            function_name() {
                Commands
            }
        2
            function function_name() {
                Commands
            }
>>>>
>>>>
>>>>
'
# First Method
hello() {
    echo "Hello, Friend!"
}

hello
hello
hello

# Second Method
function hai() {
    echo "Hai, Friend!"
}

hai
hai
hai

echo "Hello World"