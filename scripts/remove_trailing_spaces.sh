#!/bin/sh

echo $1
find . -name "$1" -print0 | xargs -0 sed -i 's/[[:space:]]*$//'
