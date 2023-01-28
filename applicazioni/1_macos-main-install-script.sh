
#!/bin/bash

# Installa Homebrew se non è già installato
if ! which brew > /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Aggiorna Homebrew
brew update && brew upgrade

# Installa i pacchetti da Homebrew (formula)
brew install \
alfred \
affinity-designer \
affinity-photo \
affinity-publisher \
balenaetcher \
bitwarden \
bitwarden-cli \
cyberduck \
cryptomator \
dozer \
iterm2 \
librewolf \
lsd \
lulu \
mas \
micro \
nmap \
protonmail-bridge \
protonvpn \
signal \
sonixd \
speedtest-cli \
syncthing \
the-unarchiver \
thunderbird \
tunnelblick \
visual-studio-code \
wireguard-go \
wireguard-tools \
zerotier-one

# Installa i pacchetti da App Store (ID)
#1153157709  Speedtest
#540348655   Monosnap
#472226235   LanScan
#937984704   Amphetamine
#441258766   Magnet
#1451685025  WireGuard

mas install \
1153157709 \
540348655 \
472226235 \
937984704 \
441258766 \
1451685025

# Tap
brew tap homebrew/cask-fonts

# Aggiorna Homebrew e pulisce i pacchetti e le dipendenze non più necessarie (formula)
# e controlla se ci sono errori (formula) e se ci sono aggiornamenti disponibili (App Store)
brew update && brew upgrade && mas upgrade && brew autoremove && brew cleanup && brew doctor
