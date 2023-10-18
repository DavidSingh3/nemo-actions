xargs echo -n "$@" | xclip -selection clipboard
notify-send "Copied \"$@\" to clipboard!"

