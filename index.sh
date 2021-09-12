#!/bin/bash
# https://devhints.io/bash

# copy file to the server
# scp file.txt remote_username@10.10.0.2:/remote/directory
# paste a file from the server on the local machine
# scp remote_username@10.10.0.2:/remote/file.txt /local/directory

echo "teel is running $0 $1 $2"

if [[ -z $1 ]]; then
  ./.teel/index.sh
elif [[ $1 == "install" && -z $2 ]]; then
  npm i teel -g
elif [[ $1 == "update" && -z $2 ]]; then
  npm i teel@latest -g
elif [[ $1 == "init" && -z $2 ]]; then
  mkdir .teel
  cd .teel
  touch help.sh
  echo "#!/bin/bash" >> help.sh
  echo 'echo "This is the help file TODO"'  >> help.sh
  echo 'echo "This is the help file TODO"'  >> help.sh
  echo "# copy file to the server" >> help.sh
  echo "# scp file.txt remote_username@10.10.0.2:/remote/directory" >> help.sh
  echo "# paste a file from the server on the local machine" >> help.sh
  echo "# scp remote_username@10.10.0.2:/remote/file.txt /local/directory" >> help.sh
  touch .gitignore
  echo ".secrets/*" >> .gitignore
  mkdir .secrets
  cd ..
  chmod u+x ./.teel/*
  chmod 600 ./.teel/.secrets/*
elif [[ $1 == "cs" ]]; then
  touch ./.teel/$2.sh
  echo "#!/bin/bash" >> ./.teel/$2.sh
  echo "file created $2.sh"
elif [[ $1 == "dr" && -z $2 ]]; then
  chmod u+x ./.teel/*
  chmod 600 ./.teel/.secrets/*
  chmod u+x ./.teel/.secrets/config.sh*
elif [[ $1 == "dr" && -n $2 ]]; then
  chmod u+x $2
elif [[ -n $1 ]]; then
  ./.teel/$1.sh "${@:2}"
fi