# Get device name with iwconfig
device="wlo1"

signal=$(iwconfig $device | grep 'Link Quality' | awk 'NR=1{print $2}' | sed 's/Quality=//g')
SSID=$(iwconfig $device | grep 'ESSID:' | cut -d \" -f 2)

if [[ $signal == '' ]]; then
	message="No internet Connection"
else 
	message="$SSID $signal"
fi

echo "📶 $message" 
