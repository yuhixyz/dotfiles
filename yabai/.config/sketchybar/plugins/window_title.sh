#!/bin/bash

# W I N D O W  T I T L E 
WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
fi

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE="Desktop"
fi

if [[ ${#WINDOW_TITLE} -gt 50 ]]; then
  WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-50)
fi

sketchybar --set title icon="| 􀏜 " label=" $WINDOW_TITLE"