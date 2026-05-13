#!/usr/bin/env bash
while true; do
echo "$(date) - node is alive" >> /var/log/heartbeat.log
sleep 30
done
