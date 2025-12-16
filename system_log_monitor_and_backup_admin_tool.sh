#Project Description
#A Bash-based automation tool that monitors system logs, analyzes errors and warnings, generates reports, and performs automated backups with cleanup.
#!bin/bash
#
# Check argument
if [[ $# -ne 1 ]]; then
        echo "Usage: $0 <logfile>"
	exit 1
fi

logfile=$1
report="log_summary.txt"
backup_dir="backup_$(date +%Y-%m-%d)"

#Validate log file
if [[ ! -f $logfile ]]; then
	echo "Log file not found!"
	exit 1
fi

echo "Log Summary Report" > "$report"
echo "Generated on: $(date)" >> "$report"
echo "----------------------" >> "$report"

#Count log levels
echo "ERROR count: $(grep -ic error "$logfile")" >> "$report"
echo "WARNING count: $(grep -ic warning "$logfile")" >> "$report"
echo "INFO count: $(grep -ic info "$logfile")" >> "$report"

# ERROR lines with line numbers
echo -e "\nERROR Lines:" >> "$report"
grep -in error "$logfile" >> "$report"

# Clean output
sed -i '/INFO/d' "$report"
sed -i 's/error/ERROR/g' "$report"

# Backup
mkdir -p "$backup_dir"
cp "$logfile" "$report" "$backup_dir"

# Cleanup old backups
find . -type d -name "backup_*" -mtime +7 -exec rm -rf {} \;

echo "Report generated and backup completed."
