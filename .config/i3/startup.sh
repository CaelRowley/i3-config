#!/bin/bash

killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -r example &

killall -q compton
compton --config $HOME/.config/i3/compton.conf &

killall -q flashfocus
flashfocus --flash-on-focus --time 100 &

killall -q unclutter
unclutter &

synclient TapButton1=1

feh --bg-scale /home/cael/Pictures/Wallpaper/*.*
wal -i /home/cael/Pictures/Wallpaper/*.*