#a Bash script to check if a file exists.
#!/bin/bash

read -p "please enter the file name: " file
if [[ -f $file ]] ; then
	echo "$file exists"
else
	echo "$file does not exists"
fi
