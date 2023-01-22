#!/bin/bash

# Un array con le applicazioni che voglio aggiungere alla Dockbar
apps=("LibreWolf" "Visual Studio Code" "iTerm")

# 1. Accedo alla cartella dove sono salvate le preferenze
cd ~/Library/Preferences

# 2. Creo una copia di sicurezza del file com.apple.dock.plist
cp -a com.apple.dock.plist com.apple.dock.plist.bak

# 3. Rimuovo le applicazioni presenti nella Dockbar
defaults delete com.apple.dock persistent-apps; killall Dock

# 4. Aggiungo le applicazioni dell'array alla Dockbar
for app in "${apps[@]}"; do
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$app.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done

# 5. Riavvio il Dock per applicare le modifiche
killall Dock
