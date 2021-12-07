# Note, you cannot use single nor double quotes when using regular expressions.
capacity=$(cat /sys/class/power_supply/BAT[0-9]/capacity) 
bat_status=$(cat /sys/class/power_supply/BAT[0-9]/status)



if [ $bat_status == 'Full' ]; then
	bat=''
fi

if [ $bat_status == 'Discharging' ]; then
	if (($capacity >= 90 )); then
		bat=''
	elif (( $capacity >= 80 )); then
		bat=''
	elif (( $capacity >= 70 )); then
		bat=''
	elif (( $capacity >= 60 )); then
		bat=''
	elif (( $capacity >= 50 )); then
		bat=''
	elif (( $capacity >= 40 )); then
		bat=''
	elif (( $capacity >= 30 )); then
		bat=''
	elif (( $capacity >= 20 )); then
		bat=''
	elif (( $capacity >= 10 )); then
		bat=''
	else
		bat=''
	fi
fi

if [[ $bat_status == 'Charging' || $bat_status == 'Unknown' ]]; then
#	bat=''

	if (( $capacity >= 90 )); then
		bat=''
	elif (( $capacity >= 80 )); then
		bat=''
	elif (( $capacity >= 60 )); then
		bat=''
	elif (( $capacity >= 40 )); then
		bat=''
	elif (( $capacity >= 30 )); then
		bat=''
	else 
		bat=''
	fi

fi

echo $bat $capacity% 
#if [[ $capacity < 20 ]]; then
#	echo $bat $capacity% Low Battery
#else
#	echo $bat $capacity% 
#fi
