#!/bin/bash

killall compton
compton --config $HOME/.config/i3/compton.conf &
killall flashfocus
flashfocus --flash-on-focus --time 100 &
synclient TapButton1=1

feh --bg-scale /home/cael/Pictures/Wallpaper/*.*
wal -i /home/cael/Pictures/Wallpaper/*.*