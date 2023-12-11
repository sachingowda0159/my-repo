#!/bin/bash

#Get the URL from users
echo " Enter the URL "
read url

#Command for capturing response code
response=$(curl -I -s "$url" -o /dev/null -w "%{http_code}\n")

#condition
if [[ $response -eq 200 ]]; then
	echo "Website is up"
else
	echo "Website is down"
fi
