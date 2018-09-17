#!/bin/bash

openocd -d0 -f interface/stlink-v2.cfg -f target/stm32f1x.cfg -c 'init; reset halt; flash write_image erase maple_boot.bin 0x08000000; reset run; exit'

