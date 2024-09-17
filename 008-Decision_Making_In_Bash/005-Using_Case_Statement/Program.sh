#!/bin/bash
# Using Case Statement

:'
>>>>
>>>>
>>>>
>>>>
'

CHAR=$1

case $CHAR in
    [a-z])
        echo "Small Alphabet" ;;
    [A-Z])
        echo "Big Alphabet" ;;
    [0-9])
        echo "Number" ;;
    *) # Default Case.
        echo "Special Character" ;;
esac

echo "Hello World"
