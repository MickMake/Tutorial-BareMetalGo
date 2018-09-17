#!/bin/bash

INTERFACE=stlink-v2
TARGET=stm32f1x

. $HOME/go/src/github.com/ziutek/emgo/egpath/scripts/debug-oocd.sh $@
