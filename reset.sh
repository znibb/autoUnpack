#!/bin/bash

## Source directories
. directories.txt

## Reset media directory to empty state
rm -r $DEFAULT_DIR/*
rm -r $VIDEO_DIR/*
rm -r $AUDIO_DIR/*
