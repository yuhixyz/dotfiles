#!/usr/bin/env bash

current_space=$(yabai -m query --spaces --space | jq '.index')
# 一次性恢复当前space的所有最小化窗口
yabai -m query --windows --space $current_space |
  jq '.[] | select(."is-minimized" == true).id' |
  xargs -L1 yabai -m window --deminimize

