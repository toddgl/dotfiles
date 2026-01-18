#!/bin/sh

IFACE=$(route get default | awk '/interface:/ {print $2}')
IP=$(ifconfig "$IFACE" | awk '/inet / {print $2}')

[ -n "$IP" ] && echo "󰩟 $IP" || echo "󰩟 down"

