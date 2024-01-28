#!/bin/bash

if [ "$SENDER" = "front_app_switched" ]; then
  # Set the app name and app icon and then animate a bounce for the icon size
  sketchybar --set $NAME label="$INFO" icon.background.image="app.$INFO" \
             --animate tanh 10 --set $NAME icon.background.image.scale=0.6 \
                                           icon.background.image.scale=0.8
fi
