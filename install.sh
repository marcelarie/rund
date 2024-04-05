#!/bin/bash

# Get the directory where the script is located
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# Copy the rund.sh script to /usr/local/bin and rename it to rund
cp "$DIR"/rund.sh /usr/local/bin/rund

# Make the new script executable
chmod +x /usr/local/bin/rund

# Print a success message
echo "Installation successful!"
