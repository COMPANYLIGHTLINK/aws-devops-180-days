#!/bin/bash

LOG_FILE="$HOME/devops-training/day2-monitor.log"
DISK_THRESHOLD=80

echo "=== Linux Resource Monitor ==="
echo "Date: $(date)"

DISK_USAGE=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disk usage: ${DISK_USAGE}%"

if (( DISK_USAGE >= DISK_THRESHOLD )); then
    echo "WARNING: Disk usage is high"
else
    echo "Disk usage is healthy"
fi

echo "=== Memory ==="
free -h

echo "=== Git ==="
if command -v git >/dev/null 2>&1; then
    git --version
else
    echo "WARNING: Git not found"
fi

