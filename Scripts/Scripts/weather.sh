location="Parsippany"
output=$(echo "$(curl -s wttr.in/$location?format=3)" | cut -d F -f 1)
echo "$output"F
