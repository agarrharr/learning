#!/bin/bash

function string(){
  local first=${1:0:1}
  echo "${1:1}${first}ay"
}

string $1
