#!/bin/bash

xmodmap -e "pointer = 1 2 3 5 4"
xrdb -merge ~/.Xresources
feh --bg-fill /home/prybiec/Pictures/wallpapers/569434.jpg
exec xmonad
~/.screenlayout/setscreen2.sh
redshift -c ~/.config/redshift.conf &
