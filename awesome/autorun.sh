#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

~/.screenlayout/default-double.sh
run "picom"
run "unclutter"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "nm-applet"
run "redshift"
run "kitty"
run "pa-applet" 
run "udiskie"

if ! pgrep -f "chrome" ;
then
  run google-chrome-stable --profile-directory='Profile 1'
  run google-chrome-stable --profile-directory='Profile 2'
fi


# killall -q polybar
# polybar left &
# polybar right &
# polybar middle &
# polybar tray &
# polybar xwindow &

pkill -f xidlehook
xidlehook \
  --not-when-audio \
  --detect-sleep \
  --timer 300 'betterlockscreen -l' '' &
#  --timer 600 'xset dpms force off' '' \
#  --timer 21600 'systemctl suspend' '' \
#  --timer 1 'pkill -f chrome' ''&

pkill -f copyq
sleep 3
copyq &

xfce4-power-manager --daemon

run "flatpak run md.obsidian.Obsidian"
