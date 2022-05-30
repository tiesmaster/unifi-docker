#!/bin/bash

# mkdir -p unifi/data
# mkdir -p unifi/log
# docker run --rm --init -p 8080:8080 -p 8443:8443 -p 3478:3478/udp -e TZ='Europe/Amsterdam' -v ~/unifi:/unifi --name unifi jacobalberty/unifi:v7
docker run --rm -it --init -p 8080:8080 -p 8443:8443 -p 3478:3478/udp -e TZ='Europe/Amsterdam' -v unifi:/unifi --name unifi jacobalberty/unifi