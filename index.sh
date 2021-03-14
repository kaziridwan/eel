#!/bin/bash
# https://devhints.io/bash
echo "teel is running $0 $1 $2"

if [[ -z $1 ]]; then
  ./.teel/index.sh
elif [[ $1 == "dr" && -z $2 ]]; then
  chmod u+x ./.teel/*
  chmod 600 ./.teel/.secrets/*
elif [[ -n $1 ]]; then
  ./.teel/$1 "${@:2}"
fi