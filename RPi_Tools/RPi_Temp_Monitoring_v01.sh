#!/bin/bash

#===============================================================================
#
#          FILE:  RPi_Temp_Monitoring_v01.sh
# 
#         USAGE:  Raspberry Pi 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Carlos Sa (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  04/19/20 15:37:33 WEST
#      REVISION:  ---
#===============================================================================


echo "#==============================================================================="
echo "Raspberry Pi Temperature Monitoring"
echo "$(date) @ $(hostname)"
echo ""

# Layout formating
printf "%-15s %-10s %-10s\n" "TIMESTAMP" "CPU_ARM_GLOBAL_TEMP(C)" "GPU_TEMP(C)"
#printf "%30s\n" "------------------------------------------------------"

# Run
while true
do
	# Timestamp
	timestamp=$(date +"%H:%M:%S")

	# Get GPU Temperature (Celsius)
	gpu_temp_celsius=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
	
	# Get ARM chip Temperature (Celsius)
	cpu_arm_temp_celsius=$(($(cat /sys/class/thermal/thermal_zone0/temp)/(1000)))
	
	printf "%-15s %10s %19s\n" "$timestamp" "$cpu_arm_temp_celsius" "$gpu_temp_celsius"
	
	# Time in seconds between measures
	sleep 5
done
