#! /bin/bash
#set -ex

# Capture start time
start_time=$(date +%s)

exec 1>/var/log/002-script-cluster-init.log 2>&1
echo "copying file"
cp $CYCLECLOUD_SPEC_PATH/files/test-file1.txt /var/log/
echo "file copied"

# Capture end time
end_time=$(date +%s)
# Calculate duration
duration=$((end_time - start_time))
# Format duration to hh:mm:ss
hours=$(printf "%02d" $((duration / 3600)))
minutes=$(printf "%02d" $(( (duration % 3600) / 60 )))
seconds=$(printf "%02d" $((duration % 60)))
duration="${hours}:${minutes}:${seconds}"

echo "script finished."
echo "Execution time (hh:mm:ss): $duration"


