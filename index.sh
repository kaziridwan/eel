#!/bin/bash
# https://devhints.io/bash

# copy file to the server
# scp file.txt remote_username@10.10.0.2:/remote/directory
# paste a file from the server on the local machine
# scp remote_username@10.10.0.2:/remote/file.txt /local/directory

echo "teel is running $0 $1 $2"

if [[ -z $1 ]]; then
  ./.teel/index.sh
elif [[ $1 == "dr" && -z $2 ]]; then
  chmod u+x ./.teel/*
  chmod 600 ./.teel/.secrets/*
elif [[ -n $1 ]]; then
  ./.teel/$1 "${@:2}"
fi