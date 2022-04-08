#!/bin/bash
# Makes a new subdirectory in the backups directory
mkdir /var/backups/home
# Makes a backup in this new subdirectory
tar cvvf /var/backups/home.tar /home
# Renames the backup to the current date
mv /var/backups/home.tar /var/backups/home.01272022.tar
# Prints system information to a new txt file.
ls -lh /var/backups > /var/backups/file_report.txt
# Prints how much free memory on your disk to a new txt file
free -h /var/backups > /var/backups/disk_report.txt

