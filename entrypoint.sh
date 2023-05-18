#!/bin/bash -l

if grep --exclude-dir={.git,.github, $INPUT_EXCLUDE} -rE "TODO|todo|FIXME|fixme"; then
  exit 1
else
  echo "All good"
  exit 0
fi
