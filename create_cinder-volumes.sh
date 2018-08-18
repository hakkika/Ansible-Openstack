#!/bin/sh

PART=$1

if [ ! -e $PART ]; then
  echo "Partition $PART does not exist"
  exit 1
fi

pvcreate $PART
vgcreate cinder-volumes $PART
