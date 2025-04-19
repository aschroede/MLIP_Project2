#!/bin/bash
echo "Starting setup script"
mkdir -p /kaggle/working

if [ $? -eq 0 ]; then
    echo "Successfully created /kaggle/working"
else
    echo "Failed to create directory. Error code: $?"
fi
