
function browsermenu {
	options="chromium\nfirefox\nCancel"\	
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "chromium" ]]; then
		chromium
	elif [[ $selected = "firefox" ]]; then
		firefox
	elif [[ $selected = "Cancel" ]]; then
		return
	fi
}

browsermenu
