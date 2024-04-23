function init {
	repo_identifier=$(echo "$PWD-$$" | md5sum | cut -d" " -f1)

	if [ -f .rundir ]; then
		if [ ! -f "/tmp/${repo_identifier}_rund" ]; then
			touch "/tmp/${repo_identifier}_rund"
			source .rundir
		fi
	fi
}

PROMPT_COMMAND="init; $PROMPT_COMMAND"
