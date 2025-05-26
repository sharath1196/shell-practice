#!/bin/bash

while true; do
  cpu_usage=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')
  echo "CPU Usage: ${cpu_usage}%"
  sleep 1
done