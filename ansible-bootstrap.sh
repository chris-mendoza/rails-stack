#!/bin/bash

EXPECTED_ARGS=1


if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0`  <DIRECTORY NAME>"
  exit $E_BADARGS
fi

mkdir $1
cd $1
mkdir prod
mkdir stage

touch prod/site.yml
mkdir prod/group_vars
mkdir prod/host_vars
mkdir prod/roles
mkdir prod/roles/common
mkdir prod/roles/common/tasks
touch prod/roles/common/tasks/main.yml
mkdir prod/roles/common/handlers
touch prod/roles/common/handlers/main.yml
mkdir prod/roles/common/templates
mkdir prod/roles/common/files
mkdir prod/roles/common/vars
touch prod/roles/common/vars/main.yml

touch stage/site.yml
touch stage/web.yml
mkdir stage/group_vars
mkdir stage/host_vars
mkdir stage/roles
mkdir stage/roles/common
mkdir stage/roles/common/tasks
touch stage/roles/common/tasks/main.yml
mkdir stage/roles/common/handlers
touch stage/roles/common/handlers/main.yml
mkdir stage/roles/common/templates
mkdir stage/roles/common/files
mkdir stage/roles/common/vars
touch stage/roles/common/vars/main.yml
