#!/bin/bash

usage="Please include a filename"
filename=${1?usage}

if [[ ! -f $filename ]]; then
  echo $usage;
  exit;
fi

cat $filename | wc -l
