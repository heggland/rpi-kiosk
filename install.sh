#!/bin/bash

sudo cp rpi-kiosk.service /etc/systemd/system

mkdir /home/pi/kiosk
mkdir /home/pi/kiosk/video

sudo systemctl daemon-reload
sudo systemctl enable rpi-kiosk.service
sudo systemctl start rpi-kiosk.service

