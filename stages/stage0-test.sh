#!/bin/bash

echo "this is stage 0"

PROGRESS_FILE="$(dirname "$0")/../.progress"

(crontab -l ; echo "@reboot /home/luis8h/ubuntu-autosetup/setup.sh") | crontab -

if echo "1" > "$PROGRESS_FILE"; then
    echo "Progress file updated successfully."
else
    echo "Failed to update progress file."
fi
