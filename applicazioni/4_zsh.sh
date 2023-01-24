#!/bin/bash

# Controlla se zsh è installato
if ! command -v zsh > /dev/null; then
  echo "zsh non è installato. Inizio installazione..."
  brew install zsh
fi

# Controlla se oh-my-zsh è installato
if [ ! -d ~/.oh-my-zsh ]; then
  echo "oh-my-zsh non è installato. Inizio installazione..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Controlla se il plugin zsh-autosuggestions è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
  echo "zsh-autosuggestions non è installato. Inizio installazione..."
  brew install zsh-autosuggestions
fi

# Controlla se il plugin zsh-completions è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-completions ]; then
  echo "zsh-completions non è installato. Inizio installazione..."
  brew install zsh-completions
fi

# Controlla se il plugin zsh-fast-syntax-highlighting è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-fast-syntax-highlighting ]; then
  echo "zsh-fast-syntax-highlighting non è installato. Inizio installazione..."
  brew install zsh-fast-syntax-highlighting
fi

# Controlla se il plugin zsh-history-substring-search è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search ]; then
  echo "zsh-history-substring-search non è installato. Inizio installazione..."
  brew install zsh-history-substring-search
fi

# Controlla se il plugin zsh-syntax-highlighting è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
  echo "zsh-syntax-highlighting non è installato. Inizio installazione..."
  brew install zsh-syntax-highlighting
fi

# Controlla se Powerlevel10k è installato
if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then
  echo "powerlevel10k non è installato. Inizio installazione..."
  git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

# # Crea una copia di backup del file .zshrc
# cp ~/.zshrc ~/.zshrc.bak
# #Cerca la riga contenente "ZSH_THEME" nel file .zshrc
# if grep -q "^ZSH_THEME" ~/.zshrc; then
#   # Commenta la riga contenente "ZSH_THEME"
#   sed -i '/^ZSH_THEME/s/^/#/' ~/.zshrc
#   # Aggiungi la nuova variabile "ZSH_THEME" al file .zshrc 
#   sed -i '/^#ZSH_THEME/a\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc
# fi