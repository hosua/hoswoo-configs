function gamemenu {
	options="Retroarch\nMAME\nPCSX2\nLutris\nSteam\nEtterna\nRunelite\nCancel"
	selected=$(echo -e $options | dmenu)
	if [[ $selected = "Retroarch" ]]; then
		retroarch
	elif [[ $selected = "MAME" ]]; then
		mame
	elif [[ $selected = "PCSX2" ]]; then
		PCSX2
	elif [[ $selected = "Lutris" ]]; then
		lutris
	elif [[ $selected = "Etterna" ]]; then
		Etterna
	elif [[ $selected = "Runelite" ]]; then
		runelite
	elif [[ $selected = "Steam" ]]; then
		steam
	elif [[ $selected = "Cancel" ]]; then
		return
	fi
}

gamemenu


