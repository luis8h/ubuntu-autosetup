#!/bin/bash

echo "setting up ubuntu ..."

# creating progress file
if [ -e "stages/.progress" ]; then
    # Read the number from the file and set it to 0 if uninitialized or empty
    progress=$(<stages/.progress)
    progress=${progress:-0}
    echo "current progress: $progress"
else
    echo "creating progress file ..."
    progress=${progress:-0}
    echo 0 > stages/.progress
fi

./stages/stage$progress-test.sh

number=$(<stages/.progress)
echo "number aFter stage 0 $number"


# gnome terminal customization (from yt video)
#./terminal-profile/install_powerline.sh
#./terminal-profile/install_terminal.sh
#./terminal-profile/install_profile.sh
 
# install nvim
#sudo snap install nvim --classic
