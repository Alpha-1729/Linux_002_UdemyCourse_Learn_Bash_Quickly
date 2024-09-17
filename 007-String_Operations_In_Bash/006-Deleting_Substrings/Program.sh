#!/bin/bash
# Deleting Substrings

:'
>>>>
>>>>
>>>>
>>>>
'

fact="Sun is a big star"

# Delete the first occurrence of 'big' from the string.
echo ${fact/big}

# Delete only the first occurrence of '-' from the string.
cell="112-358-1321"
echo ${cell/-}

# Delete all occurrences of '-' from the string.
echo ${cell//-}

# Update the variable to remove all occurrences of '-' and print the result.
cell=${cell//-}
echo "Hello World"
