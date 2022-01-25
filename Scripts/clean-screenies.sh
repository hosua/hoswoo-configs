# A simple script that cleans my screenshots directory when it gets cluttered.

all=$(date +"%m %d %y"| awk '{print $1" "$2" "$3}')
month=$(echo $all | awk '{print $1}')
day=$(echo $all | awk '{print $2}')
year=$(echo $all | awk '{print $3}')


echo month: $month
echo day: $day
echo year: $year
DIRNAME="Clutter_$month-$day-$year"
# Don't try to create the directory if it already exists
if [ ! -d "$DIRNAME" ]; then
	echo "Created directory named: $DIRNAME"
	mkdir "$DIRNAME"
fi

echo "Moving all images to $DIRNAME"

# Popular image formats I could think off the top of my head
FTYPES=(".jpg" ".png" ".jpeg" ".gif" ".tif" ".tiff" ".bmp")

for t in ${FTYPES[@]}; do
	# Take care not to put quotes around any regular expressions. Otherwise you will take
	# the literal character of that regex (For example, don't quote the *$t* here)
	mv *$t* "$DIRNAME"
done
