#!/bin/sh
openbox &
sleep 1
exec xterm -en UTF-8 -bg black -fg white -fa "DejaVu Sans Mono" -fs 12 -fullscreen -e /usr/local/bin/pin-setup
