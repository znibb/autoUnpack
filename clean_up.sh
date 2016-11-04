#!/bin/bash

## Source directories
. directories.txt

## Run unpack script first to ensure no rars are deleted before being unpacked
./unpack.sh

## Remove all rars
rm $RAR_DIR/*
