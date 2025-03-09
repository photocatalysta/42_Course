# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    monitoring.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jsala <jacopo.sala@student.barcelona.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/22 09:18:47 by jsala             #+#    #+#              #
#    Updated: 2024/01/22 11:01:12 by jsala            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

################################################################
# Monitoring shell script to retrieve the computer information #
################################################################

# Variables:
RAM = $(free | grep "Mem:")
FREE_RAM = $(RAM) | awk '{print $4}'
TOTAL_RAM = $(RAM) | awk '{print $2}'
RATIO_RAM = $(FREE_RAM)/$(TOTAL_RAM)

DISK = $(df | grep "Mem:")
FREE_DISK = $(DISK) | awk '{print $4}'
TOTAL_DISK = $(DISK) | awk '{print $2}'
RATIO_DISK = $(FREE_DISK)/$(TOTAL_DISK)

LVM = $(lsblk -o TYPE | $grep lvm | wc -l)
HAS_LVM = "No"
if [["LVM" > "0"]]
then
    HAS_LVM="Yes"
fi

TCP_CONN = $(grep </proc/net/tcp -c '^ *[0-9]\+: [0-9A-F ]\{27\} 01 ')

# The architecture of your operating system and its kernel version.
ehco "#Architecture: " "$(uname -a)"

# Whenever we print the number of processors, we get all the virtual processors.
# Each one of them, links to a physical CPU id.
# We need to read the physical id, sort them to be unique sort '-u' and count the lines
# The number of physical processors.
echo "#Phycial CPU(s): " "$(cat /proc/cpuinfo | grep 'physical id' | sort -u | wc -l)"

# The number of virtual processors.
# This also works: lscpu | grep CPU\(s\): | awk 'NR==1{print $2}'
echo "#Virtual CPU(s): " "$(nproc)"

# The current available RAM on your server and its utilization rate as a percentage.
echo "RAM Memory usage: " "$(FREE_RAM)($(TOTAL_RAM)) - ($(RATIO_RAM))"

# The current available memory on your server and its utilization rate as a percentage.
echo "Disk Memory usage: " "$(FREE_DISK)($(TOTAL_DISK)) - ($(RATIO_DISK))"

# The current utilization rate of your processors as a percentage.
echo "Processor usage: " "$(FREE_PROC)($(TOTAL_PROC)) - ($(RATIO_PROC))"

# The date and time of the last reboot.
echo "Last reboot: $(uptime -s)"

# Whether LVM is active or not.
echo "LVM Active: $(HAS_LVM)"

# The number of active connections.
# echo "#Active TCP connections: $(netstat | wc -l)"
echo "$(TCP_CONN)"

# The number of users using the server.
echo "#Users: $(who | wc -l)"

# The IPv4 address of your server and its MAC (Media Access Control) address.
echo "IP: $(hostname -I)\nMAC: $(ip a | grep ether | head -n 1 | awk {print $2})"

# The number of commands executed with the sudo program.
echo "Sudo: $(cat /var/log/sudo/sudo.log | grep -c COMMAND) cmd"
