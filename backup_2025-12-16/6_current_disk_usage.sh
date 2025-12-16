#a Bash script to:
#Display current disk usage of /
#If usage is greater than 80%, print an alert message
#Otherwise, print that disk usage is within limit
#!/bin/bash

#to check current disk usage
disk=$(df -h / | awk 'NR==2 {print $5}')
disk1=${disk%\%}
echo "current disk usage is $disk"

#to display alert message
if [[ $disk1 -gt 80 ]] ; then
	echo "disk usage is more than threshold limit"
	echo "current disk usage is $disk"
else
	echo "disk usage is within in the limit"
	echo "current disk usage is $disk"
fi
