# A226B Partition Manager by Neel0210, smiley9000

A tool for managing the `system_ext` partition on Samsung A226B devices. This script helps check and create the necessary `system_ext` partition and then flashes a dummy image to it. It is primarily intended for users who want to manage partitions on devices running **Android 12** or later and need support for `system_ext`.

## Features

- **Partition Checking**: The script checks if the `system_ext` partition exists on the device.
- **Partition Creation**: If the partition doesn't exist, it will create the `system_ext` partition.
- **Flashing the Partition**: The script will then flash a dummy `system_ext` image to the partition.
- **Recovery Reboot**: After flashing, the device is rebooted into recovery mode.

## Requirements

- A **Samsung A226B** device.
- **Fastboot** installed and set up correctly.
- The **dummy_system_ext.img** file for flashing.
- **ARISE-V1 or V1+** for full `system_ext` support.

## Installation

1. Download or clone the repository to your local machine.
2. Ensure that `fastboot` is installed and available in your system's PATH.
3. Ensure the `dummy_system_ext.img` file in the repository directory.

## Usage

1. Connect your A226B device to your computer via USB cable.
2. Boot the device into **fastboot mode**.
3. Open the terminal/command prompt in the repository directory.
4. Run the following command to execute the script:
   ```bash
   bash Create_ext.sh
