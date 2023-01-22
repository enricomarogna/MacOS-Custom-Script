#!/bin/bash

# Verify that iTerm2 is installed
if ! brew list -1 | grep -q "iterm2"; then
  # Install iTerm2 via Homebrew
  echo "iTerm2 is not installed. Installing via Homebrew..."
  brew install iterm2
fi

# Set iTerm2 as the default terminal
echo "Setting iTerm2 as the default terminal..."
echo "if you are prompted to enter your admin password please do so"
sudo echo "changing default terminal to iTerm2"
sudo echo "exported version of iTerm2"
sudo echo "export TERM_PROGRAM='iTerm.app'" >> ~/.bash_profile
sudo echo "set iTerm as default terminal"
sudo echo "export TERM_PROGRAM='iTerm.app'" >> ~/.bash_profile
sudo echo "done"
