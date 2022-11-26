#!/bin/bash
# Command Substitutions

:'
>>>> Two way used for command substitution.
        variable=$(command)  -> Modern way, also can be used with nested commands.
        variable=`command`   -> Old way
>>>>
>>>>
>>>>
'

TODAY=$(date)
echo $TODAY

tday=`date`
echo $tday

mycal=`cal 2022`
echo $mycal

# Getting the kernel version.
kver=`uname -r`
echo $kver

# Getting the distro name.
distro=$(cat /etc/os-release | egrep '^NAME=')
echo $distro

echo "Hello World"