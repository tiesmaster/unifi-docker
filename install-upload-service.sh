#!/bin/bash

[ -d /var/local/unifi_backups ] || mkdir /var/local/unifi_backups
chown ties /var/local/unifi_backups

cp upload-unifi-controller-backups.service /etc/systemd/system/
cp upload-unifi-controller-backups.timer /etc/systemd/system/

sudo systemctl enable upload-unifi-controller-backups.timer
sudo systemctl start upload-unifi-controller-backups.timer