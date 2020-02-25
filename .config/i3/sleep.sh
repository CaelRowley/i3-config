#!/bin/bash

rm /tmp/screen.png
tmpbg=/tmp/screen.png
scrot /tmp/screen.png
convert $tmpbg -scale 5% -scale 2000% $tmpbg
convert $tmpbg -filter Gaussian -blur 5x3 $tmpbg
i3lock -i $tmpbg
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
systemctl suspend -i