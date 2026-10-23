#!/bin/bash

echo "=== DevOps Health Check ==="

echo "Date: $(date)"
echo "User: $(whoami)"
echo "Hostname: $(hostname)"

echo "=== Disk Usage ==="
df -h /

echo "=== Memory Usage ==="
free -h

echo "=== Git Check ==="
if command -v git >/dev/null 2>&1; then
    git --version
else
    echo "ERROR: Git is not installed"
    exit 1
fi

echo "=== Health Check Completed ==="

