#!/bin/bash
# Set up a link to the API key to root's home.
mkdir -p /root/.kaggle

# Check if source file exists before creating symlink
if [ -f kaggle/kaggle.json ]; then
    ln -s $(pwd)/kaggle/kaggle.json /root/.kaggle/kaggle.json
    
    if [ $? -eq 0 ]; then
        echo "Kaggle.json link successful"
        chmod 600 /root/.kaggle/kaggle.json
    else
        echo "Kaggle.json link not successful!"
    fi
else
    echo "Source file kaggle/kaggle.json does not exist!"
fi