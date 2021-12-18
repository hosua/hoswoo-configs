# escrotum overwrites a the previous file when saving an image with the same name. 
# This script's purpose is to append a number to the file name if it already exists
# Lol this script is sloppy as hell but it works

path="$HOME/Pictures/Screenshots/" # Save destination
filename="IMG" # Name of screenshots
filetype="jpg"
numdigits=3 # The number of digits long that the appended number will be

# END{print} will print the last line
# The following cut commands extracts only the number from that output.
# Using regular expressions to check if the file exists
# We use 10# here because we have leading zeros in our number.
# Leading zeros indicates an octal number in C, which cannot go over 008 (it's base 8)
# We can force bash to convert an octal to base 10 ( or any base ) by prepending the value with. `10#`,
# with 10 indicating the base we want.
count=$(( 10#$(ls $path -1a | grep "$filename"_[0-9]*\."$filetype" | awk 'END{print}' | cut -d . -f 1 | cut -d _ -f 2)))
if [[ $count == '' ]]; then 
	# Now check if we have the file type, but without a number
	count=$(ls $path -1a | grep "$filename"."$filetype" | awk 'END{print}' | cut -d . -f 1 | cut -d _ -f 2)
	if [[ $count == '' ]]; then 
		count=-1 # -1 indicates absolutely no files of that name
	else
		count=0  # 0 indicates 1 file already existed
	fi
fi
# We got the number of the largest numbered file. 
# So we need to increment the filename's number by 1 to not overwrite it.
if (( $count != -1 && $count != 0 )); then 
	count=$(($count + 1)) 
fi

formatted=$(printf %0"$numdigits"d $count) # Formatting the number to have leading zeros
leadingzeros=$(printf %0"$numdigits"d 0)

# No image files with an identical name found whatsoever, so just create the file with the implied name.
if [[ $count == -1 ]]; then
	outname="$filename"."$filetype"
elif (( $count == 0 )); then
	# did not file with zeros so append the zeros to file type
	if [[ $(ls $path | grep $filename | grep $leadingzeros) == '' ]]; then 
		outname="$filename"_"$leadingzeros"."$filetype"
	# We found the file with zeros, so append 1 to the file name instead
	else
		leadingzeros=$(printf %0"$numdigits"d 1) # instead of zero, we will print 1 
		outname="$filename"_"$leadingzeros"."$filetype"
	fi
else
	outname="$filename"_"$formatted"."$filetype"
fi

escrotum "$path""$outname" -s
echo "'$outname'" was saved to "'$path'"

