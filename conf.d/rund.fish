function init --on-event fish_prompt
    set repo_identifier (echo "$PWD-$fish_pid" | md5sum | cut -d" " -f1)

    if test -f .rundir
        if not test -f /tmp/$repo_identifier"_rund"
            touch /tmp/$repo_identifier"_rund"
            source .rundir
        end
    end
end

init
