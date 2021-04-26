#!/bin/bash

cd output/build/linux-5.10.25/
ARCH=arm CROSS_COMPILE="/home/sysadmin/fireroot/output/host/bin/arm-linux-gnueabihf-" make dtbs
