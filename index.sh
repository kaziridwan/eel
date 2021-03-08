#!/bin/bash
# https://devhints.io/bash
echo $2
if [[ -n "$2" ]]; then
  ./.teel/$2 "${@:3}"
elif [[ -z "$2" ]]; then
  ./.teel/index.sh
fi