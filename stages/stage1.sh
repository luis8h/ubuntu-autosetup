#!/bin/bash

echo "this is stage 1"


PROGRESS_FILE="$(dirname "$0")/../.progress"
MAIN_DIR="$(dirname "$0")/.."

$MAIN_DIR/terminal-profile/install_powerline.sh

if echo "1" > "$PROGRESS_FILE"; then
    echo "Progress file updated successfully."
else
    echo "Failed to update progress file."
fi

