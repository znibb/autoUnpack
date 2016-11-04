#!/bin/bash

## Source directories
. directories.txt

## Create rar dir if does not already exists
if [[ ! -d $RAR_DIR ]]; then
  mkdir $RAR_DIR
fi

## Copy example rars from templates folder to rar folder
cp -u $TEMPLATE_DIR/*.rar $RAR_DIR
