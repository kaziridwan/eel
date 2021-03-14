#!/bin/bash
# https://devhints.io/bash
if [[ -z $1 ]]; then
  ./.teel/index.sh
elif [[ -n $1 ]]; then
  ./.teel/$1 "${@:2}"
elif [[ $1 == "dr" && -z $2 ]]; then
  chmod u+x ./.teel/*
  chmod 600 ./.teel/.secrets/*
fi