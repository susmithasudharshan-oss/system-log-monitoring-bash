#a Bash script to count how many lines contain the word "error" in log.txt (case-insensitive).
#!/bin/bash

we=$(grep -i "error" log.txt | wc -l)
echo "total lines contating error are: $we"
