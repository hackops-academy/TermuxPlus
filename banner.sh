#!/bin/bash
clear
figlet "TermuxPlus" | lolcat
echo -e "\nWelcome back, $USER!" | lolcat
echo -e "Date: $(date)" | lolcat
echo -e "IP: $(curl -s ifconfig.me)" | lolcat
termux-battery-status | jq '.percentage' | awk '{print "Battery: " $1"%"}' | lolcat
df -h | grep /data | awk '{print "Storage: "$4" Free"}' | lolcat
echo ""
