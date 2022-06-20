#!/usr/bin/env bash

SOURCE=$(im-select)

case ${SOURCE} in
    'com.apple.keylayout.US') LABEL='U.S.' ICON='🇺🇸' ;;
    'im.rime.inputmethod.Squirrel.Rime') LABEL='Squirrel' ICON='🐿' ;;
    'com.logcg.inputmethod.LogInputMac3.LogInputMac3IME') LABEL='小鹤' ICON='🦩' ;;
esac

sketchybar --set $NAME icon="$ICON"
