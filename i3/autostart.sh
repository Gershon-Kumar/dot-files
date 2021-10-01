avaliableMonitors=$(xrandr --listmonitors | awk '{print $4}')

#loop through all avaliable Monitors.
for monitor in $avaliableMonitors; do
	if [ $monitor == "HDMI-1" ] 
	then
		xrandr --output eDP-1 --off
		xrandr --output HDMI-1 --right-of DP-1
	fi

	if [ $monitor == "DP-1" ] 
	then
		xrandr --output eDP-1 --off #turn off laptop monitor
		xrandr --output DP-1 --left-of HDMI-1
	fi

done
