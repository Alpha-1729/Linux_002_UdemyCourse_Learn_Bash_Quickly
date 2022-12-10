#!/bin/bash
# Recursive Functions

:'
>>>> Running a bash script in the background.
        bash hello.sh &
>>>>
>>>>
>>>>
'
# Print the factorial of numbers.
function factorial() {
    if [ $1 -eq 1 ]; then
        echo 1
    else
        last=$(factorial $(( $1 - 1 )))
        echo $(( $1 * last ))
    fi
}

echo -n "4! is :"
factorial 4
echo -n "5! is :"
factorial 5
echo -n "6! is :"
factorial 6

# Creating a infinite recursive function.
function recur() {
    echo "Hello, Friend!"
    recur
}

recur

# Adding a base case to the infinite recursive function.
counter=1
function finite_recur() {
    echo "Hello, Friend!!"
    if [ $counter -eq 10 ]; then
        exit 1
    fi
    counter=$(( $counter + 1))
    finite_recur
}

finite_recur

echo "Hello World"