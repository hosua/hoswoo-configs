if [ $1 == 'up' ]
then
	xbacklight -inc +10
fi

if [ $1 == 'down' ]
then
	xbacklight -inc -10
fi
