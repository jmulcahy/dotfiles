# hacks around macOS's weird zsh sourcing order
if [ -n "$PATH_SAVE" ]; then
    PATH_SAVE=:$PATH_SAVE:;
    PATH=$PATH:
    while [ -n "$PATH" ]; do
        x=${PATH%%:*} # the first remaining entry
        case $PATH_SAVE in
            *:$x:*) ;; # already there
            *) PATH_SAVE=$PATH_SAVE$x: ;; # not there yet
        esac
        PATH=${PATH#*:}
    done
    PATH=${PATH_SAVE:1:-1}
    unset PATH_SAVE x
    export PATH
fi

export PATH
