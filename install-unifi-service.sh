#!/bin/bash

sudo cp unifi-controller.service /etc/systemd/system/

sudo systemctl enable unifi-controller
sudo systemctl start unifi-controller