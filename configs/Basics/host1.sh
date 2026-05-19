#!/bin/bash

# This script will configure host1 to have an IP address of 10.10.1.2/24 on eth1 and bring it up.

echo "Configuring host1..."

#Bring up the interface
ip link set eth1 up

# Assign IP address
ip addr add 10.10.1.2/24 dev eth1


echo "Adding default route"


# Remove Docker default route if exists
ip route del default 2>/dev/null

ip route add default via 10.10.1.1 dev eth1


echo "[+] Host1 Configuration Complete"