#!/bin/bash

DIR="/usr/local/share/rund/scripts"

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
