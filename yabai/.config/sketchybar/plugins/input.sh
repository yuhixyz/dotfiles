#!/usr/bin/env bash

SOURCE=$(im-select)

case ${SOURCE} in
    'com.apple.keylayout.US') LABEL='U.S.' ICON='🇺🇸' ;;
    'im.rime.inputmethod.Squirrel.Rime') LABEL='鼠' ICON='🇨🇳' ;;
esac

sketchybar --set $NAME icon="$ICON"
