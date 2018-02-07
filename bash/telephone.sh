#!/bin/bash

regex="^\([0-9]{3}\).?[0-9]{3}-[0-9]{4}$"

if [[ $1 =~ $regex ]]; then
  echo "Match"
else
  echo "Fail"
fi
