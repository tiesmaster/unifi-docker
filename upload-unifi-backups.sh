#!/bin/bash

echo Copying files out of the unifi docker container into /var/local/unifi_backups
docker cp -a unifi:/unifi/data/backup/autobackup /var/local/unifi_backups

cd /var/local/unifi_backups/autobackup

for file in *
do
    echo Uploading file ${file}
    dbxcli put ${file} unifi_backups/${file}
done