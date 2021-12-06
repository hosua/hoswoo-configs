output=$(amixer | grep "Left: Playback"| awk 'NR==1')
# Search the line for on or off
if [[ "$output" == *"on"* ]]; then
	onoff='on'
elif [[ "$output" == *"off"* ]]; then
	onoff='off'
fi

if [[ $onoff == 'on' ]]
then 
	#echo $(amixer sget Master | grep "Mono:" | awk '{print "🔊 "$4}' | sed 's/[][]//g')
	echo $(amixer | grep "Left: Playback" | awk '{print "🔊 "$5}' | sed 's/[][]//g')
fi

if [[ $onoff == 'off' ]];
then
	#echo $(amixer sget Master | grep "Mono:" | awk '{print "🔇 "$4}' | sed 's/[][]//g')
	echo $(amixer | grep "Left: Playback" | awk '{print "🔇 "$5}' | sed 's/[][]//g')
fi

