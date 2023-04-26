#!/bin/bash

sudo cp rpi-kiosk.service /etc/systemd/system

if [ ! -d "/home/pi/rpi-kiosk" ];
then
  mkdir /home/pi/rpi-kiosk
fi

sudo systemctl daemon-reload
sudo systemctl enable rpi-kiosk.service
sudo systemctl start rpi-kiosk.service

