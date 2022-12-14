#!/bin/bash
# Automating Backups

:'
>>>> First create a backup folder in the destination server.
>>>> Adding the bash script in the crontab to automate the backup.
        crontab -e  # To open the crontab file.
        crontab -l  # To view all the crontab.
>>>> To run a bash script at evry midninght.
        0 0 * * * /home/elliot/scripts/backup.sh
>>>>
'

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
    sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
    if [ $? -eq 0 ]; then
        echo "$i backup succeeded"
    else
        echo "$i backup failed"
    fi

    scp /tmp/$i-$backup_date.tar.gz $dest_server:$dest_dir
    if [ $? -eq 0 ]; then
        echo "$i backup transfer succeeded."
    else
        echo "$i backup transfer failed."
    fi
done

# Cleanup /tmp
sudo rm /tmp/*.gz

echo "Backup script is done"

echo "Hello World"