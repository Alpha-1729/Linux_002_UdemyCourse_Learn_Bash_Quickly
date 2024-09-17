#!/bin/bash
# Monitor Disk Space

:'
>>>> `lsblk` command:
        `lsblk` displays details about block devices, which are files representing devices connected to the PC (except RAM disks).
>>>> `df` command:
        `df` stands for "disk free". It shows the amount of space used and available on the file system.
>>>> To automate this, you can create a cron job.
>>>> To send mail from a Linux system:
        Install `mailutils` with:
            sudo apt-get install mailutils
        Configure `postfix` (a high-performance mail transport agent).
        To view the mail log:
            cat /var/log/mail.log
'

# Show the available disk space in the root directory.
# -h option makes the output human-readable (e.g., in MB or GB).
df -h /

# Create a volume group named 'vg1' using the specified disk.
vgcreate vg1 /dev/sdc

# Display all volume groups.
vgs

# Create two logical volumes within the volume group 'vg1':
# - 'lvapps' of size 2GB
# - 'lvdb' using all remaining space
lvcreate -n lvapps -L 2G vg1
lvcreate -n lvdb -l 100%FREE vg1

# Format the logical volumes with the ext4 file system.
mkfs -t ext4 /dev/mapper/vg1-lvapps
mkfs -t ext4 /dev/mapper/vg1-lvdb

# Create directories to mount the file systems.
mkdir /database
mkdir /apps

# Mount the file systems to the created directories.
mount /dev/mapper/vg1-lvapps /apps
mount /dev/mapper/vg1-lvdb /database

# Create a large file to simulate high memory usage.
cd /database
dd if=/dev/zero of=bigfile bs=100M count=17

# Display the size of the created file.
du -b bigfile

# Check the disk usage percentage for the /database directory.
df -h /database
df -h /database | tail -n 1 | awk '{ print $5 }' | cut -d % -f1

# Main code:
# List of file systems to monitor.
filesystems=("/" "/apps" "/database")

# Loop through each file system and check usage.
for i in "${filesystems[@]}"; do
    # Get the disk usage percentage.
    usage=$(df -h $i | tail -n 1 | awk '{print $5}' | cut -d % -f1 )
    # If usage is 90% or more, send an alert.
    if [ $usage -ge 90 ]; then
        alert="Running out of space on $i. Usage is: $usage%"
        echo "Sending a disk space alert."
        echo $alert | mail -s "$i is $usage% full" youremail@gmail.com
    fi
done

echo "Hello World"
