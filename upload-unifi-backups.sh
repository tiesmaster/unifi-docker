#!/bin/bash

cd /var/local/unifi_backups/autobackup

for file in *
do
    echo Uploading file ${file}
    dbxcli put ${file} unifi_backups/${}
done