#!/bin/bash

# Install Hugo if not already installed
if ! command -v hugo &> /dev/null
then
    echo "Hugo not found. Installing Hugo..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        if command -v brew &> /dev/null; then
            brew install hugo
        else
            echo "Please install Homebrew first: https://brew.sh"
            exit 1
        fi
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        sudo snap install hugo
    else
        echo "Please install Hugo manually: https://gohugo.io/installation/"
        exit 1
    fi
fi

echo "Hugo version:"
hugo version

echo ""
echo "Starting Hugo development server..."
echo "Visit http://localhost:1313 to view your site"
hugo server -D
