#!/bin/bash
# Adding Array Elements

: '
>>>>
>>>>
>>>>
>>>>
'

# Creating an array with different Linux distributions.
distros=("Ubuntu" "Fedora" "Kali")
echo ${distros[*]}

# Adding a new distribution to the array.
distros+=("Red Hat")
echo ${distros[*]}

echo "Hello World"
