#!/bin/bash
# https://devhints.io/bash

if [[ -z "$2" ]]; then
  ./.teel/$2 "${@:3}"
elif [[ -n "$2" ]]; then
  ./.teel/index.sh
fi