#!/bin/bash

function multiply(){
  echo $(( $1 * 2 ));
}

multiply $1
