#!/bin/bash
# Adding Array Elements

:'
>>>>
>>>>
>>>>
>>>>
'

# Creating an array of distros.
distros=("Ubuntu", "Fedora", "Kali")
echo ${distros[*]}

# Adding an element to the array of distros.
distros+=("Red Hat")
echo ${distros[*]}

echo "Hello World"