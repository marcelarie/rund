#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if [ "$1" == "bash" ]; then
	source "$DIR/scripts/bash/init.sh"
elif [ "$1" == "zsh" ]; then
	source "$DIR/scripts/zsh/init.sh"
elif [ "$1" == "fish" ]; then
	echo "source $DIR/scripts/conf.d/rund.fish"
else
	printf "Usage: rund [shell]\n\n"
	echo "Invalid argument. Please specify one of the following shells:"
	ls "$DIR"/scripts | sed 's/\..*//' | sed 's/^/- /'
fi
