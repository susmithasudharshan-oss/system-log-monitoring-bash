#a Bash script that:
#Shows a menu
#Allows user to:
#Install a package
#Check if a package is installed
#Exit
#Must be run as root user
#!/bin/bash

#to run script as root user
if [[ $EUID -ne 0 ]] ; then
	echo "Please run the script as root user"
	exit 1
fi
while true ; do
echo "1. Install a package"
echo "2. Check if a package is installed"
echo "3. Exit"
read -p "Please enter your choice: " cho
case $cho in
	1) read -p "enter the pacakge to install: " pi
		if dpkg -s $pi ; then
			echo "$pi package is already installed"
		else
&			apt install -y $pi
			echo "$pi package installed successfully"
		fi
		;;
	2) read -p "enter the package to check: " ci
		if dpkg -s $ci ; then
			echo "$ci package is installed"
		else
			echo "$ci package is not installed"
		fi
		;;
	3) echo "Exit" 
		exit 0
		;;
	*) echo "Invalid option"
		;;
esac
done

