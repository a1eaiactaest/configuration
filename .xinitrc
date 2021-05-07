#!/bin/bash

xmodmap -e "pointer = 1 2 3 5 4"
xrdb -merge ~/.Xresources
xsetroot -solid "#262626"
exec xmonad
~/.screenlayout/setscreen2.sh
redshift -c ~/.config/redshift.conf &
