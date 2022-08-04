#/bin/bash
case $1 in
		1) xrandr --output eDP-1 --brightness $( xrandr --verbose |grep -E 'Brightness:\ [0-1]+\.*' | echo "$(awk '{print $2}')+0.1"|bc);;
		2) xrandr --output eDP-1 --brightness $( xrandr --verbose |grep -E 'Brightness:\ [0-1]+\.*' | echo "$(awk '{print $2}')-0.1"|bc)
esac

