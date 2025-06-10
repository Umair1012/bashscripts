#!/bin/bash

Backup_dir="/home/ubuntu/backup"
filename="etc-backup-$(date +%F).tar.gz"

mkdir -p $Backup_dir

tar -czf $Backup_dir/$filename /etc

echo "Backup Completed: $Backup_dir/$filename "
