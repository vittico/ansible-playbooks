#!/bin/bash

echo "Creating Ansible Play Book for $1"
# Main dir
mkdir $1

# goup and host vars
mkdir -p $1/group_vars $1/host_vars
touch  $1/group_vars/group1.yml
touch  $1/host_vars/hostname.yml

# library module_utils filter_pluins
mkdir -p $1/library $1/mdoule_utils $1/filter_plugins 

touch $1/site.yml
touch $1/$1.yml

mkdir -p $1/roles/$1/

mkdir -p $1/roles/$1/task
touch $1/roles/$1/main.yml

mkdir -p $1/roles/$1/handlers
touch $1/roles/$1/handlers/main.yml

mkdir -p $1/roles/$1/files
mkdir -p $1/roles/$1/templates

mkdir -p $1/roles/$1/vars/
touch $1/roles/$1/vars/main.yml

mkdir -p $1/roles/$1/defaults
touch $1/roles/$1/defaults/main.yml

mkdir -p $1/roles/$1/meta
touch $1/roles/$1/meta/main.yml

mkdir -p $1/roles/$1/library
mkdir -p $1/roles/$1/module_utils
mkdir -p $1/roles/$1/lookup_plugins

echo "done!"
