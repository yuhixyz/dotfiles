#!/usr/bin/env sh

SOURCE=$(im-select)

case ${SOURCE} in
    'com.apple.keylayout.US') LABEL='EN'  ;;
    'im.rime.inputmethod.Squirrel.Rime') LABEL='Squirrel' ;;
    'com.logcg.inputmethod.LogInputMac3.LogInputMac3IME') LABEL='CH' ;;
esac

sketchybar --set $NAME label="$LABEL" icon=􀇳
