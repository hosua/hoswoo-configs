onoff=$(amixer | grep "Left: Playback"| awk 'NR==1{print $6}' | sed 's/[][]//g')
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

