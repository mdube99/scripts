#!/bin/bash

FILENAME=${1?Specifiy a filename, Dumbass}
COUNTER=1


if [[ -n "$TMUX_PANE" ]]; then
  session_name=$(tmux list-panes -t "$TMUX_PANE" -F '#S' | head -n1)
fi

for l in $(cat $FILENAME); do
  COUNTER=$[COUNTER + 1]
  echo $session_name
  tmux new-window -t $session_name:$COUNTER -n $l
  # tmux send-keys -t "$l" "nmapAutomator -H $l -t All" C-m
  # tmux send-keys -t "$l" "ping -H $l -t All" C-m
done
