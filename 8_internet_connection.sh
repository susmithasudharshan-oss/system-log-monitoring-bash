#a Bash script to check internet connectivity:
#Ping google.com
#If connected → print "Internet is connected"
#Else → print "Internet is not connected"
#!bin/bash

ping -c 1 www.google.com

if [[ $? -eq 0 ]] ; then
	echo "Internet is connected"
else
	echo "Internet is not conected"
fi
