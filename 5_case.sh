#a Bash script using a case statement:
#User enters 1 → print MONDAY
#User enters 2 → print TUESDAY
#Any other input → print Invalid choice
#!/bin/bash

echo " 1. monday"
echo " 2. tuesday"
read -p "Please enter your choice: " cho
case $cho in
	1) echo "1. MONDAY" ;;
	2) echo "2. TUESDAY" ;;
	*) echo "Invalid choice" ;;
esac
