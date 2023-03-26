#!/bin/bash
# Nothing to see here! This is just a
# file I use to easily push all my changes

GetToken # script i made to copy my token to clipboard

git pull
git add .
git commit
git push

if [[ $XDG_SESSION_TYPE == x11 ]]; then
  echo '' | xclip -i -selection clipboard
else
  echo '' | wl-copy
fi
