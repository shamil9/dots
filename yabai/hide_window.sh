#!/bin/bash

window_id=$YABAI_PROCESS_ID
window_data=$(yabai -m query --windows --window "$window_id")
has_focus=$(echo "$window_data" | jq '.["has-focus"]')

echo "$window_id" 

# if [[ "$can_resize" == "false" ]] && [[ "$floating" == "false" ]]; then
#     yabai -m window "$window_id" --toggle float
#     exit 0
# fi
