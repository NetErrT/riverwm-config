#!/bin/bash

killall swaybg

riverctl spawn "swaybg -m fill -i ~/.images/bg.jpg"
riverctl spawn "mako"
riverctl spawn "/usr/lib/xdg-desktop-portal"
riverctl spawn "wl-paste --watch cliphist store"
riverctl spawn "/usr/lib/xdg-desktop-portal-wlr"
riverctl spawn "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"

riverctl spawn "swayidle -w timeout 700 \"swaylock\" before-sleep \"swaylock\""

