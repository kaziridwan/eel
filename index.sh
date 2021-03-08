#!/bin/bash
# https://devhints.io/bash
if [[ -z $2 ]]; then
  ./.teel/index.sh
elif [[ -n $2 ]]; then
  ./.teel/$2 "${@:3}"
fi