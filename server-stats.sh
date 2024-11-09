#!/bin/bash

echo "========================"
echo " Server Performance Stats"
echo "========================"

# Total CPU usage
echo -e "\nCPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 + $4 "%"}'

# Total memory usage (Free vs Used including percentage)
echo -e "\nMemory Usage:"
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3, $2, $3*100/$2 }'

# Total disk usage (Free vs Used including percentage)
echo -e "\nDisk Usage:"
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3, $2, $5}'

# Top 5 processes by CPU usage
echo -e "\nTop 5 CPU-hungry Processes:"
ps aux --sort=-%cpu | head -n 6 | awk '{printf "%-10s %-8s %-5s %-s\n", $1, $2, $3, $11}'

# Top 5 processes by memory usage
echo -e "\nTop 5 Memory-hungry Processes:"
ps aux --sort=-%mem | head -n 6 | awk '{printf "%-10s %-8s %-5s %-s\n", $1, $2, $4, $11}'

# Optional: Additional Information

# OS Version
echo -e "\nOS Version:"
lsb_release -d | awk -F"\t" '{print $2}'

# Uptime
echo -e "\nUptime:"
uptime -p

# Load Average
echo -e "\nLoad Average (last 1, 5, 15 mins):"
uptime | awk -F'load average:' '{ print $2 }'

# Logged in users
echo -e "\nLogged In Users:"
who

# Failed login attempts
echo -e "\nFailed Login Attempts:"
grep "Failed password" /var/log/auth.log | wc -l

echo -e "\n========================"
echo " End of Report"
echo "========================"

