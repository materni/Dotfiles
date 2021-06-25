#!/bin/sh
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xrdb ~/.Xresources

exec dbus-launch bspwm
