#!/bin/bash

cd ~/dotfiles
stow --adopt -v .
git restore .
