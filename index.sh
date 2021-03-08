#!/bin/bash
# https://devhints.io/bash
if [[ -z $1 ]]; then
  ./.teel/index.sh
elif [[ -n $1 ]]; then
  ./.teel/$1 "${@:2}"
fi