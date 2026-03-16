#!/bin/bash

echo "=============================="
echo " SYSTEM HEALTH CHECK"
echo "=============================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Uptime:"
uptime

echo ""
echo "CPU Load:"
top -bn1 | grep load

echo ""
echo "Memory usage:"
free -h

echo ""
echo "Disk usage:"
df -h

echo ""
echo "Top running processes:"
ps aux --sort=-%cpu | head -n 6
