#!/bin/bash

# Get the directory where the script is located
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# Define the installation directory for the scripts
INSTALL_DIR="/usr/local/share/rund"

# Create the installation directory
mkdir -p "$INSTALL_DIR"

# Copy the scripts to the installation directory
if cp -r "$DIR"/scripts "$INSTALL_DIR"; then
	if cp "$DIR"/rund.sh /usr/local/bin/rund; then
		if chmod +x /usr/local/bin/rund; then
			echo "Installation successful!"
		else
			echo "Failed to make /usr/local/bin/rund executable."
			echo "Try running the script as root."
		fi
	else
		echo "Failed to copy rund.sh to /usr/local/bin."
		echo "Try running the script as root."
	fi
else
	echo "Failed to copy scripts to $INSTALL_DIR."
	echo "Try running the script as root."
fi
