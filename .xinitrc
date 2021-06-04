#!/bin/sh
systemctl --user import-environment DISPLAY &
exec slstatus &
exec dunst &

exec xss-lock slock &
exec xset s 300 &

exec xrdb /home/giovanni/.Xresources &
exec remaps &
exec dwm
