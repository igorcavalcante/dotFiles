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
  --timer 600 'betterlockscreen -l' '' \
  --timer 600 'xset dpms force standby' 'xset dpms force on' & 

#--timer 7200 'systemctl suspend' '' &

pkill -f copyq
sleep 3
copyq &

# xfce4-power-manager --daemon

run "flatpak run md.obsidian.Obsidian"
