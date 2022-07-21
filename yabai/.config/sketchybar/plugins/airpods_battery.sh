#!/bin/bash
  
DEVICES="$(system_profiler SPBluetoothDataType -json -detailLevel basic 2>/dev/null | jq -rc '.SPBluetoothDataType[0].device_connected[] | select ( .[] | .device_minorType == "Headphones")' | jq '.[]')"
if [ "$DEVICES" = "" ]; then
  sketchybar -m --set $NAME drawing=off
else
  left="$(echo $DEVICES | jq -r .device_batteryLevelLeft)"
  right="$(echo $DEVICES | jq -r .device_batteryLevelRight)"
  case="$(echo $DEVICES | jq -r .device_batteryLevelCase)"
  
  if [[ "$left" == "null"  ]]; then
    left="-"
  fi
  
  if [[ "$right" == "null" ]]; then
    right="-"
  fi
  
  if [[ "$case" == "null" ]]; then
    case="-"
  fi
  
  sketchybar -m --set $NAME drawing=on
  sketchybar -m --set $NAME label="$left $right $case"
fi
