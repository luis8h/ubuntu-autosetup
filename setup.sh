#!/bin/sh

echo "setting up ubuntu ..."

PROGRESS_FILE="$(dirname "$0")/.progress"

# Creating progress file
if [ -e "$PROGRESS_FILE" ]; then
    # Read the number from the file and set it to 0 if uninitialized or empty
    progress=$(cat "$PROGRESS_FILE")
    progress=${progress:-0}
    echo "current progress: $progress"
else
    echo "creating progress file ..."
    progress=${progress:-0}
    echo 0 > "$PROGRESS_FILE"
fi

# Execute the stage script using the absolute path
STAGE_SCRIPT="$(dirname "$0")/stages/stage$progress.sh"
sh "$STAGE_SCRIPT"
