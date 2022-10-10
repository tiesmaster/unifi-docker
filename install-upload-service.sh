#!/bin/bash

[ -d /var/local/unifi_backups ] || sudo mkdir /var/local/unifi_backups
sudo chown ties /var/local/unifi_backups

sudo cp upload-unifi-backups.sh /usr/local/bin/

sudo cp upload-unifi-controller-backups.service /etc/systemd/system/
sudo cp upload-unifi-controller-backups.timer /etc/systemd/system/

sudo systemctl enable upload-unifi-controller-backups.timer
sudo systemctl start upload-unifi-controller-backups.timer

sudo systemctl daemon-reload