#!/bin/bash
# Bash Challenge Calculate Net Salary

:'
>>>>
>>>>
>>>>
>>>>
'

echo -n "Please enter your monthly gross salary: "
read mgross
echo -n "Please enter your tax rate (in percentage): "
read trate
netsalary=$(echo "scale=2; ($mgross * 12) *(100 - $trate)/100" | bc -l)
echo "Your total net annual salary is: $netsalary"

echo "Hello World"