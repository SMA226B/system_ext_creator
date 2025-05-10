#!/bin/bash
#
# Script to check and create 'system_ext' partition if necessary, then flash it
# Credits: smiley9000
#

# Check if 'system_ext' partition exists
echo "Checking for existing 'system_ext' partition..."
fastboot getvar all | grep -q "system_ext"

if [ $? -eq 0 ]; then
    echo "'system_ext' partition found. Skipping creation."
else
    echo "Creating system_ext..."
    fastboot create-logical-partition system_ext 1000
    if [ $? -eq 0 ]; then
        echo "Partition created successfully."
    else
        echo "Failed to create partition."
		echo "sometimes if this fails means you already have system_ext, check remote:"
        exit 1
    fi
fi

# Flash the 'system_ext' partition with the dummy image
echo "Flashing 'system_ext' with dummy_system_ext.img..."
fastboot flash system_ext dummy_system_ext.img

# Reboot into recovery and prompt for the next steps
echo "Rebooting into recovery..."
sleep 1
echo "Flash 'system_ext' image once booted to recovery."
echo "Dummy system_ext was odm.img."
echo "Use ARISE-V1 or V1+ to get system_ext support."
sleep 5
fastboot reboot recovery

# Credits
echo "Script by smiley9000"
