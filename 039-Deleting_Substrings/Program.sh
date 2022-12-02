#!/bin/bash
# Deleting Substrings

:'
>>>>
>>>>
>>>>
>>>>
'

fact="Sun is a big star"

# Deleting substrings.
echo ${fact/big}

# Delete only first occurence of the substring.
cell="112-358-1321"
echo ${cell/-}

# Delete all occurences of the substring.
echo ${cell//-}

# Update the variable after deleting the substring.
cell=${cell//-}
echo "Hello World"