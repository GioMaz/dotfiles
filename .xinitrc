#!/bin/sh
systemctl --user import-environment DISPLAY &
exec picom &
exec slstatus &

exec dunst &
exec blueman-applet &
exec nm-applet &
exec pasystray &

exec xss-lock slock &
exec xset s 300 &

exec /home/giovanni/.fehbg &
exec xrdb /home/giovanni/.Xresources &
(sleep 0.5 && xst -e lfimg) &
exec remaps &
exec dwm
