#!/bin/bash

cat allPort_nmap.nmap | grep 'open' | awk '{print $1}' | sort -u | awk -F '/' '{print $1}' > foundPortsRAW.txt

cat foundPortsRAW.txt |tr '\n' ',' | sed 's/,$/\n/' > foundPorts.txt
rm foundPortsRAW.txt

echo "Found Ports:"
echo "-------------------------------------------------------"
cat foundPorts.txt
