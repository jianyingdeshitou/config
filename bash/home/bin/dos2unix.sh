#!/bin/sh
find . -name "$1" -type f -exec dos2unix {} \;
