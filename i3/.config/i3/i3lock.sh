#!/bin/bash
if pgrep -x "i3lock" > /dev/null; then
    exit
fi

# ICON=$HOME/.xlock/icon.png
TMPBG=~/.config/backgrounds/lofiwallpaper.png
# scrot ~/.config/backgrounds/lofiwallpaper.png
# convert $TMPBG -scale 10% -scale 1000% $TMPBG
# convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -i $TMPBG -t
