#!/bin/bash

cd /var/local/unifi_backups/autobackup

for i in *
do
    dbxcli put $i unifi_backups/$i
done