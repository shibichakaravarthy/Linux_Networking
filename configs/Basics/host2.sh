#!/bin/bash

echo "Configuring host2..."

#Bring up the interface
ip link set eth1 up

# Assign IP address
ip addr add 10.10.2.2/24 dev eth1


echo "Adding default route"

# Remove Docker default route if exists
ip route del default 2>/dev/null

ip route add default via 10.10.2.1 dev eth1


echo "[+] Host2 Configuration Complete"


