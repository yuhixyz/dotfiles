#!/usr/bin/env bash

SOURCE=$(im-select)

case ${SOURCE} in
    'com.apple.keylayout.US') LABEL='U.S.' ICON='🇺🇸' ;;
    'com.sogou.inputmethod.sogou.pinyin') LABEL='拼' ICON='🇨🇳' ;;
esac

sketchybar --set $NAME icon="$ICON"
