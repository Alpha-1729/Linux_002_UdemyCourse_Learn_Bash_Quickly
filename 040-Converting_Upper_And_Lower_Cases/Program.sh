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

# Converting to upper case.
echo ${legend^^}

# Converting to lower case.
echo ${actor,,}

# Converting only the first letter to upper case.
echo ${legend^}

# Converting only the first letter to lower case.
echo ${actor,}

# Coverting only certain letters to upper case.
echo ${legend^^[jn]}

# Coverting only certain letters to lower case.
echo ${actor,,[OBE]}

echo "Hello World"