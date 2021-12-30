# Note, you cannot use single or double quotes when using regular expressions.
capacity=$(cat /sys/class/power_supply/BAT[0-9]/capacity) 
bat_status=$(cat /sys/class/power_supply/BAT[0-9]/status)

echo $capacity% [$bat_status]
