#a Bash script that:
#Defines a function called greet
#Asks the user for their name
#Prints: name
#!/bin/bash

greet () {
	read -p "please enter your name: " name
	echo "welcome $name"
}

while true; do
	echo "1. to print your name"
	echo "2. exits"
	read -p "please enter your choice: " cho
	case $cho in
		1) greet ;;
		2) echo "Exit"
			exit 1
			;;
		*) echo "invalid option"
			;;
	esac
done

