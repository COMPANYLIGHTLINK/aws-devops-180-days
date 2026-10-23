#!/bin/bash

echo "Date: $(date)"

if command -v git >/dev/null 2>&1; then
    echo "Git: $(git --version)"
else
    echo "ERROR: Git is missing"
    exit 1
fi
