#!/bin/bash
echo "Putting TV in standby mode in ${TV_SHUTDOWN_TIMER} seconds..."
sleep $TV_SHUTDOWN_TIMER

echo "standby 0" | cec-client -s -d 1

echo "TV set to standby"