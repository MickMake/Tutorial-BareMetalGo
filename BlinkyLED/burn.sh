#!/bin/bash

rm cortexm3.elf __noos_cortexm3_f10x_md.c __noos_cortexm3_f10x_md.h
egc
openocd -d0 -f interface/stlink-v2.cfg -f target/stm32f1x.cfg -c 'init; program cortexm3.elf; reset run; exit'

