#output=$(amixer | grep "Left: Playback"| awk 'NR==1')
playback="Mono: Playback"

output=$(amixer | grep "$playback" | awk 'NR==1')
# Search the line for on or off
if [[ "$output" == *"on"* ]]; then
	onoff='on'
elif [[ "$output" == *"off"* ]]; then
	onoff='off'
fi

if [[ $onoff == 'on' ]]
then 
	#echo $(amixer sget Master | grep "Mono:" | awk '{print "🔊 "$4}' | sed 's/[][]//g')
	echo $(amixer | grep "$playback"  | awk '{print "🔊 "$4}' | sed 's/[][]//g')
fi

if [[ $onoff == 'off' ]];
then
	#echo $(amixer sget Master | grep "Mono:" | awk '{print "🔇 "$4}' | sed 's/[][]//g')
	echo $(amixer | grep "$playback" | awk '{print "🔇 "$4}' | sed 's/[][]//g')
fi

