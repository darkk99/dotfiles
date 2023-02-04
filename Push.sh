#!/usr/bin/bash


# Nothing to see here! This is just a
# file I use to easily push all my changes

git pull
git add $(eval $(which ls))
git commit
git push
