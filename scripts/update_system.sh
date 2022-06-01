# Created: 2022-06-01 · Updated: 2024-09-15 · Author: Sergei Baldruev · Language: Bash · Script type: System update

#!/bin/bash

# System update script for school servers running Ubuntu/Debian

echo "Starting system update..."

# Update package list
sudo apt update

# Upgrade packages
sudo apt -y upgrade

# Optional: clean up
sudo apt -y autoremove
sudo apt -y autoclean

echo "System update completed."

# Log update
echo "$(date) - System updated by auto script" >> /var/log/system_update.log

exit 0
