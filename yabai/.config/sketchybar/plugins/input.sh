#!/usr/bin/env sh

SOURCE=$(im-select)

case ${SOURCE} in
    'com.apple.keylayout.US') LABEL='EN' ICON='🇺' ;;
    'im.rime.inputmethod.Squirrel.Rime') LABEL='Squirrel' ICON='🐿 ' ;;
    'com.logcg.inputmethod.LogInputMac3.LogInputMac3IME') LABEL='CH' ICON='🦩' ;;
esac

sketchybar --set $NAME label="$LABEL"
