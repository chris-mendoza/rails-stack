#!/bin/bash

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0`  <DIRECTORY ROLE NAME>"
  exit $E_BADARGS
fi

mkdir ./roles/$1
cd ./roles/$1
mkdir tasks
touch tasks/main.yml
mkdir handlers
touch handlers/main.yml
mkdir files
mkdir templates
mkdir vars
