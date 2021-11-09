//Modify this file to change what commands output to your statusbar, and recompile using the make command.

// Change location and wttrCommand to get the correct weather
char location [50] = "Parsippany:";
// Change Parsippany to a city near you.
char wttrCommand [50] = "curl -s wttr.in/$Parsippany?format=1";

static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

	// Uncomment the line below if on a laptop to display battery life
	// {"🔋 ", "cat /sys/class/power_supply/BAT0/capacity | awk '{print $1\"%\"}'", 	10, 	0},
	{"🖥️ Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
	{"CPU:", "top -bn1 | grep Cpu | awk '{print $2\"%\"}'", 	1, 		0},
	{"STO:", "df -h /home | tail -n 1 | awk '{print $3\"/\"$2}'",		5,		0},
	{location, wttrCommand,					120,		0},
	{" 📆 ", "date '+%b %d (%a) | 🕒 %I:%M %p'",		5,		0},



};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
