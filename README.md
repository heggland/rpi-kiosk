# Kiosk mode made fun with raspberry pi and vlc

Simple program that create a new service

```
[Unit]
Description=rpi-kiosk

[Service]
User=pi
Environment="DISPLAY=:0"
ExecStart=/usr/bin/vlc --loop --fullscreen --playlist-tree --playlist-autostart --random /home/pi/kiosk/video
WorkingDirectory=/home/pi
Restart=always

[Install]
WantedBy=multi-user.target
```

## Install
1. Run the install script with this command 
- `./install`
2. A directory called `rpi-kiosk` will be created under `/home/pi/rpi-kiosk.
3. Place the videos in this directory.
4. Restart the service after videos are placed inside the directory.
- `./restart`

## Edit
1. edit the service (the lazy way)
- `./edit.sh`

## Restart
1. restarts the service (the lazy way)
- `./restart.sh`

## Status
1. View status of service
- `sudo systemctl status rpi-kiosk.service`

## Stop
2. Stop the service
- `systemctl stop rpi-kiosk.service`

## Delete
- to delete the service; go to `/etc/systemd/system` and delete the file `rpi-kiosk.service`
- reload services with command: `systemctl daemon-reload`




## Support my work
.


	<a href="https://www.buymeacoffee.com/heggland" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Cup Of 		Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px 		rgba(190, 190, 190, 0.5) !important;" ></a>

