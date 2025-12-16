#a Bash script to display:
#Current date and time
#Logged-in user
#System uptime
#!/bin/bash

d=$(date "+%Y-%m-%d %H:%M:%S")
echo "Current date and time is: $d"
u=$USER
echo "Curret logged in user id: $u"
up=$(uptime -p)
echo "Current system uptime is: $up"
