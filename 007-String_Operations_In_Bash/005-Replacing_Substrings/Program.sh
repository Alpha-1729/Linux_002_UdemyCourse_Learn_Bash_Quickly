#!/bin/bash
# Replacing Substrings

:'
>>>> Syntax:
        string/old/new
>>>>
>>>>
>>>>
'
foss="Fedora is a free operating system."

# Replace 'Fedora' with 'Ubuntu' in the string.
echo "${foss/Fedora/Ubuntu}"

# Replace 'free' with 'popular' in the string.
echo "${foss/free/popular}"

# Update the actual variable by replacing 'Fedora' with 'Ubuntu'.
foss=${foss/Fedora/Ubuntu}

echo "Hello World"
