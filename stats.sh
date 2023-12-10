#!/bin/bash

if command -v istats &> /dev/null; then
    istats all
else
    echo "iStats dependency is not installed. Installing..."
    sudo gem install istats

    if [$? -eq 0]; then
        echo "iStats dependency has been installed successfully. Running iStats..."
        istats all
    else
        echo "Error: Failed to install iStats. Please check your system."
    fi
fi