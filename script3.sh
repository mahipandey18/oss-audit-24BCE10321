#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Mahi

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Check config directory of chosen software (example: git)
CONFIG_DIR="$HOME/.gitconfig"

echo "----------------------"
echo "Checking software config..."

if [ -e "$CONFIG_DIR" ]; then
    ls -l "$CONFIG_DIR"
else
    echo "Config file not found: $CONFIG_DIR"
fi
