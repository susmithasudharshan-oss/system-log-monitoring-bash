#a Bash script to:
#Create a backup folder with today’s date
#Copy all .txt, .sh, and .log files into it
#Print how many files were copied
#!/bin/bash

backup=backup_$(date +%Y-%m-%d)
mkdir -p "$backup"
echo "$backup folder created successfully"
cp *.txt $backup
cp *.sh $backup
cp *.log $backup
count=$(find $backup -type f | wc -l)
echo "total files copied are: $count"
