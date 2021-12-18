signal=$(iwconfig wlo1 | grep 'Link Quality' | awk 'NR=1{print $2}' | sed 's/Quality=//g')

if [[ $signal == '' ]]; then
	echo "No internet Connection"
else 
	echo $signal
fi
