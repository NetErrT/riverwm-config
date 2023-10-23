#!/bin/bash

pkill swaybg
pkill swaylock
pkill swayidle

swaybg -m fill -i ~/.images/bg.jpg &
swayidle -w timeout 700 "swaylock" before-sleep "swaylock" &

mako &
wl-paste --watch cliphist store &

dbus-run-session pipewire &

/usr/libexec/xdg-desktop-portal &
/usr/libexec/xdg-desktop-portal-wlr &
/usr/libexec/polkit-gnome-authentication-agent-1 &

