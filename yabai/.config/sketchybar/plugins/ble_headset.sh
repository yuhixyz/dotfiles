DEVICES=$(system_profiler SPBluetoothDataType -json -detailLevel basic 2>/dev/null | jq -rc '.SPBluetoothDataType[0].devices_list[]? | select( .[] | .device_minorType == "Headphones" and .device_connected =="Yes") | keys[]')

if [ "$DEVICES" = "" ]; then
  sketchybar -m --set $NAME drawing=off
else
  sketchybar -m --set $NAME drawing=on
fi
