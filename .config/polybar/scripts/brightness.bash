#!/usr/bin/bash
if [ -f /sys/class/backlight/amdgpu_bl0/brightness ]; then
  brightness=/sys/class/backlight/amdgpu_bl0/brightness
else
  brightness=/sys/class/backlight/amdgpu_bl1/brightness
fi

if [[ $1 == '+' ]]; then
  if [[ $(cat $brightness) != 255 ]]; then
    sudo sh -c "echo $(($(cat $brightness) + 15)) > $brightness"
  fi
elif [[ $1 == '-' ]]; then
  if [[ $(cat $brightness) != 0 ]]; then
    sudo sh -c "echo $(($(cat $brightness) - 15)) > $brightness"
  fi
fi

currentBrightness=$(cat $brightness)
currentBrightnessAsPercentage="$((100*$currentBrightness/255))%"
echo $currentBrightnessAsPercentage
