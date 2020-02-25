#!/bin/bash

killall -q redshift
killall -q polybar
killall -q compton
killall -q flashfocus
killall -q unclutter

# Wait until the processes have been shut down
while pgrep polybar >/dev/null; do sleep 1; done
while pgrep compton >/dev/null; do sleep 1; done
while pgrep flashfocus >/dev/null; do sleep 1; done
while pgrep unclutter >/dev/null; do sleep 1; done

polybar -r example &
compton --config $HOME/.config/i3/compton.conf &
flashfocus --flash-on-focus --time 100 &
unclutter &

synclient TapButton1=1

feh --bg-scale /home/cael/Pictures/Wallpaper/*.*
wal -i /home/cael/Pictures/Wallpaper/*.*

while pgrep redshift >/dev/null; do sleep 1; done
redshift -l 52.47:13.42 -t 5000K:3400K &