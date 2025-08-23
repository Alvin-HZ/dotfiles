#!/bin/bash
# tmux-session-dispensary.sh from https://github.com/SylvanFranklin/.config

DIRS=(
  "$HOME/Coding/**"
  "$HOME/Documents/**"
  "$HOME"
)

IFS=','
JOINED_LIST="{${DIRS[*]}}"
unset IFS
echo $JOINED_LIST

if [[ $# -eq 1 ]]; then
  selected=$1
else
  selected=$(fd --type=dir --max-depth=2 --full-path --glob "$JOINED_LIST" -a ~ |
    sed "s|^$HOME/||" |
    sk --margin 10% --color="bw")
  [[ $selected ]] && selected="$HOME/$selected"
fi

[[ ! $selected ]] && exit 0

selected_name=$(basename "$selected" | tr . _)
if ! tmux has-session -t "$selected_name"; then
  tmux new-session -ds "$selected_name" -c "$selected"
  tmux select-window -t "$selected_name:1"
fi

tmux switch-client -t "$selected_name"
