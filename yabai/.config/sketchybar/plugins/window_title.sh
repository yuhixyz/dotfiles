#!/usr/bin/env sh

WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
fi

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE="Desktop"
fi

if [[ ${#WINDOW_TITLE} -gt 80 ]]; then
  WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-80)
fi

sketchybar --set $NAME label="$WINDOW_TITLE"


# sketchybar --set $NAME label="$WINDOW_TITLE" \
#                        icon.background.image="app.$(osascript -e "get id of app \"$INFO\"")" \
#                        icon.background.drawing=on \
#                        icon.background.image.scale=0.28
