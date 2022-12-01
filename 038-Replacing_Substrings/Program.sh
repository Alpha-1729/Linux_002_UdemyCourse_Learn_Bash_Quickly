#!/bin/bash
# Replacing Substrings

:'
>>>> Systax:
        string/old/new
>>>>
>>>>
>>>>
'
foss="Fedora is a free operating system."

# Replace Fedora with Ubuntu.
echo "${foss/Fedora/Ubuntu}"

# Replace free with popular.
echo "${foss/free/popular}"

# Updating the actual variable.
foss=${foss/Fedora/Ubuntu}

echo "Hello World"