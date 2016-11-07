#!/bin/bash

## Source directories
. directories.txt

## List contents of the rar dir
ls -R $RAR_DIR
echo

## Recursively list contents of the unpacked dir
ls -R $DEFAULT_DIR
echo
ls -R $VIDEO_DIR
echo
ls -R $AUDIO_DIR
echo
