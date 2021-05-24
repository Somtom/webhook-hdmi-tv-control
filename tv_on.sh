#!/bin/bash
echo "on 0" | cec-client -s -d 1

if [[ ! -z $TV_SHUTDOWN_TIMER ]]; then
    ./tv_off.sh &
fi