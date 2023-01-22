#!/bin/bash

# Verify that defaultbrowser is installed
if ! brew list -1 | grep -q "defaultbrowser"; then
  # Install defaultbrowser via Homebrew
  echo "defaultbrowser is not installed. Installing via Homebrew..."
  brew install defaultbrowser
fi

# Verify that LibreWolf is installed
if ! brew list -1 | grep -q "librewolf"; then
  # Install LibreWolf via Homebrew
  echo "LibreWolf is not installed. Installing via Homebrew..."
  brew install librewolf
fi

# Check if LibreWolf is the default browser
defaultBrowser=$(defaultbrowser)
if [ "$defaultBrowser" != "LibreWolf" ]; then
  # Set LibreWolf as the default browser
  echo "Setting LibreWolf as the default browser..."
  defaultbrowser librewolf
else
  echo "LibreWolf is already the default browser"
fi
