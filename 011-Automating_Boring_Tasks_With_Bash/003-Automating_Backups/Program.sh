#!/bin/bash
# Automating Backups

:'
>>>> First create a backup folder in the destination server.
>>>> Adding the bash script to the crontab to automate the backup.
        crontab -e  # To open the crontab file.
        crontab -l  # To view all the crontab entries.
>>>> To run a bash script every midnight:
        0 0 * * * /home/elliot/scripts/backup.sh
>>>> Unzip .gz files:
        tar -tvf filename.gz
'

# The command 'file -s *' is used to identify the types of files in the current directory.
file -s *

# Display disk space usage for the root directory (/), /apps, and /database in human-readable format (KB, MB, GB).
df -h / /apps /database

# Show the owner of the backup folder.
ls -ld /backup

# Change the owner of the backup folder.
sudo chown elliot /backup

# Actual script.
backup_dirs=("/etc" "/home" "/boot")
dest_dir="/backup"
dest_server="ecorp1"
backup_date=$(date +%b-%d-%y) # month-day-year

echo "Starting backup of: ${backup_dirs[@]}"

for i in "${backup_dirs[@]}"; do
    # Create a tarball of the directory, compress it, and store it in /tmp
    sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
    if [ $? -eq 0 ]; then
        echo "$i backup succeeded"
    else
        echo "$i backup failed"
    fi

    # Transfer the backup file to the destination server
    scp /tmp/$i-$backup_date.tar.gz $dest_server:$dest_dir
    if [ $? -eq 0 ]; then
        echo "$i backup transfer succeeded."
    else
        echo "$i backup transfer failed."
    fi
done

# Cleanup /tmp directory by removing .gz files
sudo rm /tmp/*.gz

echo "Backup script is done"

echo "Hello World"
