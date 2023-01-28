#!/bin/bash

#### PUNTA E FAI CLIC

# Disabilita Cerca definizione
defaults write com.apple.LaunchServices LSQuarantine -bool false
# Disabilita Rilevatore dati
defaults write com.apple.TrackpadHandwriting -bool false
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Abilita il click secondario facendo clic con due dita
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true

# Impostazione per click con il tocco
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#### SCORRI E ZOOM

# Disabilita la direzione scorrimento naturale
defaults write -g com.apple.swipescrolldirection -bool false

# Abilita Riduci o ingrandisci
defaults write com.apple.dock showLaunchpadGestureEnabled -bool true

# Abilita Zoom smart
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -bool true
defaults write com.apple.dock showMissionControlGestureEnabled -bool true

# Abilita Ruota
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -bool true

#### ALTRE AZIONI

# Abilita scorri tra le pagine con due dita
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true

# Abilita scorri tra le app a tutto schermo con quattro dita
defaults write com.apple.dock showAppExposeGestureEnabled -bool true

# Attiva Centro notifiche
defaults write com.apple.dock center-of-screen -bool true
killall Dock

# Attiva Mission control
defaults write com.apple.dock mcx-expose-disabled -bool false

# Disattiva App Exposé
defaults write com.apple.dock expose-animation-duration -float 0

# Attiva Launchpad
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-page-duration -float 0
defaults write com.apple.dock springboard-hide-duration -float 0

# Attiva Mostra scrivania
defaults write com.apple.dock showDesktopGestureEnabled -bool true

# Imposta la velocità di scorrimento al massimo
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 10.0

#### ACCESSIBILITA'

# Abilita il trascinamento con tre dita in Accessibilità
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

#### MISC

# Rinomina il file plist per evitare conflitti futuri
mv ~/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.trackpad.plist ~/Library/Preferences/com.apple.driver.AppleBluetoothMultitouch.trackpad.backup.plist

# Ricarica le preferenze per rendere effettive le modifiche
killall Dock
