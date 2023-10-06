#!/bin/bash

echo "this is stage 2"


PROGRESS_FILE="$(dirname "$0")/../.progress"
MAIN_DIR="$(dirname "$0")/.."

$MAIN_DIR/terminal-profile/install_terminal.sh

if echo "3" > "$PROGRESS_FILE"; then
    echo "Progress file updated successfully."
else
    echo "Failed to update progress file."
fi

sudo reboot

