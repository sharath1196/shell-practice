#!/bin/bash

# Write a script to monitor:
# CPU usage
# Memory usage
# Disk usage#
echo "******************************************************************"
echo
echo "CPU Load : "
uptime
echo
echo "******************************************************************"
echo
echo "Memory Usage : "
free -h
echo
echo "******************************************************************"
echo
echo "Disk Usage : "
df
echo
echo "******************************************************************"

