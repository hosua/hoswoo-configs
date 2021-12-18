
function browsermenu {
	options="firefox\nCancel"\	
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "firefox" ]]; then
		firefox
	elif [[ $selected = "Cancel" ]]; then
		return
	fi
}

browsermenu
