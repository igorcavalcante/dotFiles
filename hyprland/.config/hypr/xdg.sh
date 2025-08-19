#!/bin/sh
sleep 1
# killall -e xdg-desktop-portal-hyprland
# killall -e xdg-desktop-portal-gnome
# killall -e xdg-desktop-portal-gtk
# killall -e xdg-desktop-portal
# killall xdg-desktop-portal

pkill -f portal

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland XDG_SESSION_DESKTOP=Hyprland
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_DESKTOP
systemctl start --user xdg-desktop-portal-hyprland.service

# sleep 2

# /usr/lib/xdg-desktop-portal &
