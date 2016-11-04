#!/bin/bash

## Source directories
. directories.txt

## List contents of the rar dir
ls $RAR_DIR
echo

## Recursively list contents of the unpacked dir
ls -R $UNPACK_DIR
