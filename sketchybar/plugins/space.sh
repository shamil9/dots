#!/usr/bin/env bash

if [ "$SELECTED" = "true" ]; then
  sketchybar -m --set $NAME label.color=0xffffffff \
    --set $NAME icon.color=0xffffffff 
    # --set $NAME label.shadow.drawing=off \
    # --set $NAME icon.shadow.drawing=off \

else
  sketchybar -m --set $NAME label.color=0x551b1b1b \
    --set $NAME icon.color=0x551b1b1b 
    # --set $NAME label.shadow.drawing=on \
    # --set $NAME label.shadow.distance=2 \
    # --set $NAME label.shadow.color=0x11000000 \
    # --set $NAME icon.shadow.drawing=on \
    # --set $NAME icon.shadow.distance=2 \
    # --set $NAME icon.shadow.color=0x11000000 \
fi
