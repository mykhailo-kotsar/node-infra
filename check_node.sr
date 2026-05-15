#! /usr/bin/env bash
#check if node process is running and report status

SERVICE=$1

if [ -z "$SERVICE" ]; then
  echo "Usage: $0 <service-name>"
  exit 1
fi

if systemctl is-active --quiet "$SERVICE"; then
  echo "OK: $SERVICE is running"
else
  echo "FAIL: $SERVICE is not running"
  exit 1
fi
