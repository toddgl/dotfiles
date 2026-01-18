#!/bin/sh

TOTAL=$(sysctl -n hw.physmem)
USED=$(sysctl -n vm.stats.vm.v_active_count)
PAGE=$(sysctl -n hw.pagesize)

USED_BYTES=$((USED * PAGE))
PERCENT=$((USED_BYTES * 100 / TOTAL))

echo "󰍛 ${PERCENT}%"

