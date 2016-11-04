#!/bin/bash

## Source directories
. directories.txt

## Copy example rars from templates folder to rar folder
cp -u $TEMPLATE_DIR/*.rar $RAR_DIR
