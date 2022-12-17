#!/bin/bash
# Monitor Disk Space

:'
>>>> lsblk command:
        Lsblk is used to display details about block devices and these block devices(Except ram disk) are basically those files that represent devices connected to the pc.
>>>> df command:
        The df is an acronym for disk free. The df command tells the amount of space used and available on the file system
>>>> You can create a cron job to automate this.
>>>> To sent mail from the linux system.
        sudo apt-get install mailutils
        configure the postfix (High-performance mail transport agent)
        To view the mail log.
            cat /var/log/mail.log
'

# To show the available disk spaces in the root.
# -h -> in human readable format.
df -h /

# Create volume groups.
vgcreate vg1 /dev/sdc

# To show all the logical volumes.
vgs

# Creating two logical volumes.
lvcreate -n lvapps -L 2G vg1
lvcreate -n lvdb -1 100%FREE vg1 # Create logical volume in the remaining of the volume.

# Creating file system on the logical volumes.
mkfs -t ext4 /dev/mapper/vg1-lvapps
mkfs -t ext4 /dev/mapper/vg1-lvdb

# Creating two directories here.
mkdir /database
mkdir /apps

# Mount file system on these destinations.
mount /dev/mapper/vg1-lvapps /apps
mount /dev/mapper/vg1-lvdb /database

# Create a fake file to mimic the large memory usage.
cd /database
dd if=/dev/zero of=bigfile bs=100M count=17

# Show the file size of a file.
du -b bigfile

# Getting the usage percentage from the disk free command.
df -h /database
df -h /database | tail -n 1 | awk '{ print $5 }' | cut -d % -f1 

# Actual Code
filesystems=("/" "/apps" "/database")

for i in "${filesystems[@]}"; do
    usage=$(df -h $i | tail -n 1 | awk '{print $5}' | cut -d % -f1 )
    if [ $usage -ge 90 ]; then
        alert="Running out of space on $i, Usage is: $usage%"
        echo "Sending out a disk space alert."
        echo $alert | mail -s "$i is $usage% full" youremail@gmail.com
    fi
done

echo "Hello World"