#!/bin/bash

backup_dir="/home/ekarih" # Эту директорию резервируем
done_dir="/tmp/backup"    # Резервируем сюда

rsync -ac --delete $backup_dir $done_dir 2>> /var/log/backup.log
if [ $? -eq 0 ]; then
    echo "$(date "+%F, %T") Buckup create complete" >> /var/log/backup.log
else
    echo "$(date "+%F, %T") Buckup ERROR" >> /var/log/backup.log
fi
