#!/bin/bash

mount -t debugfs none /sys/kernel/debug

echo "[=================DBG_CLOCK==================]"

for clk in /sys/kernel/debug/clk/*; do
	for prop in $clk/*; do
		echo "$prop::$(cat $prop)"
	done
done

echo "[=================DBG_DSS==================]"

for dbg in /sys/kernel/debug/omapdss/*; do
	echo $dbg
	cat $dbg
done

echo "[=================DBG_PINCTRL==================]"

for pinctl in /sys/kernel/debug/pinctrl/*; do
	for prop in $pinctl/*; do
		echo "$prop::$(cat $prop)"
	done
done
