#!/bin/bash
# Converting Upper And Lower Cases

:'
>>>>
>>>>
>>>>
>>>>
'

legend="john nash"
actor="JULIA ROBERTS"

# Convert the entire string to upper case.
echo ${legend^^}

# Convert the entire string to lower case.
echo ${actor,,}

# Convert only the first letter to upper case.
echo ${legend^}

# Convert only the first letter to lower case.
echo ${actor,}

# Convert specific letters ('j' and 'n') to upper case.
echo ${legend^^[jn]}

# Convert specific letters ('O', 'B', and 'E') to lower case.
echo ${actor,,[OBE]}

echo "Hello World"
