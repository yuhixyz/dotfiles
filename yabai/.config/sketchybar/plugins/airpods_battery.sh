#!/usr/bin/env bash
  
DEVICES="$(system_profiler SPBluetoothDataType -json -detailLevel basic 2>/dev/null | jq -rc '.SPBluetoothDataType[0].device_connected[] | select ( .[] | .device_minorType == "Headphones")' | jq '.[]')"
if [ "$DEVICES" = "" ]; then
  sketchybar -m --set $NAME drawing=off
else
  sketchybar -m --set $NAME drawing=on
  left="$(echo $DEVICES | jq -r .device_batteryLevelLeft)"
  right="$(echo $DEVICES | jq -r .device_batteryLevelRight)"
  case="$(echo $DEVICES | jq -r .device_batteryLevelCase)"
  
  if [[ "$left" == "null"  ]]; then
    left="Nf"
  fi
  
  if [[ "$right" == "null" ]]; then
    right='Nf'
  fi
  
  if [[ "$case" == "null" ]]; then
    case="Nf"
  fi
  
  sketchybar -m --set $NAME label="$left $case $right"
fi