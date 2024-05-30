#!/bin/bash

# Try to get the directory of the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# If the scripts directory does not exist in the current directory, use the /usr/local/share directory
if [ ! -d "$DIR/scripts" ]; then
	DIR="/usr/local/share/rund/scripts"
fi

if [ "$1" == "allow" ]; then
	if [ ! -f Runfile ]; then
		echo "No Runfile file found in current directory."
		exit 1
	else
		parsed_pwd=${PWD////_}
		allow_file="/tmp/${parsed_pwd}_allow_rund"

		if [ ! -f "$allow_file" ]; then
			echo "Allowing Runfile file to run in current directory."
			touch "$allow_file"
			exit 0
		fi
		echo "The Runfile file is already allowed to run."
	fi
	exit 0
fi

if [ "$1" == "bash" ]; then
	source "$DIR/bash/init.sh"
elif [ "$1" == "zsh" ]; then
	echo "$DIR/zsh/init.sh"
elif [ "$1" == "fish" ]; then
	echo "source $DIR/fish/conf.d/rund.fish"
else
	printf "Usage: rund [shell]\n\n"
	echo "Invalid argument. Please specify one of the following shells:"
	ls "$DIR" | sed 's/\..*//' | sed 's/^/- /'
fi
