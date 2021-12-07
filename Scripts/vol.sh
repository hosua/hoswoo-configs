vol_source="Left: Playback"
output=$(amixer | grep "$vol_source" | awk 'NR==1')

# Search the line for on or off
if [[ "$output" == *"[on]"* ]]; then
	onoff='on'
elif [[ "$output" == *"[off]"* ]]; then
	onoff='off'
fi

volume=$(amixer | grep "$vol_source" | awk '{print $5}' | sed 's/[][]//g' | cut -d "%" -f 1)

if (( $volume >= 66 )); then
	icon='墳'
elif (( $volume >= 33 )); then
	icon='奔'
else
	icon='奄'
fi

if [[ $onoff == 'off' ]]; then
	icon='婢'
fi

echo "$icon $volume%"
