#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if [ "$1" == "bash" ]; then
	source "$DIR/bash/init.sh"
elif [ "$1" == "zsh" ]; then
	source "$DIR/zsh/init.sh"
elif [ "$1" == "fish" ]; then
	echo "source $DIR/conf.d/rund.fish"
else
echo "Invalid argument. Please specify one of the following shells:"
echo "'bash', 'zsh', or 'fish'."
fi
