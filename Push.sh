#!/bin/bash
# Nothing to see here! This is just a
# file I use to easily push all my changes

GetToken # script i made to copy my token to clipboard

git pull
git add .
git commit
git push

echo '' | xclip -i -selection clipboard
echo '' | wl-copy
