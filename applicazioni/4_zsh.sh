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

# Attiva oh-my-zsh come shell predefinita
if [ "$SHELL" != "/bin/zsh" ]; then
  echo "Imposto zsh come shell predefinita..."
  chsh -s $(which zsh)
fi


# Controlla se il plugin zsh-autosuggestions è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
  echo "zsh-autosuggestions non è installato. Inizio installazione..."
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Controlla se il plugin zsh-completions è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-completions ]; then
  echo "zsh-completions non è installato. Inizio installazione..."
  git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
fi

# Controlla se il plugin zsh-syntax-highlighting è installato
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
  echo "zsh-syntax-highlighting non è installato. Inizio installazione..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
  echo "zsh-syntax-highlighting non è installato. Inizio installazione..."
  git clone https://github.com/rupa/z.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/z
fi

# Controlla se la cartella per installare Powerlevel10k è presente altrimenti la crea
if [ ! -d ~/.oh-my-zsh/custom/themes ]; then
  mkdir -p ~/.oh-my-zsh/custom/themes
fi
# Controlla se Powerlevel10k è installato
if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then
  echo "powerlevel10k non è installato. Inizio installazione..."
  #git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
  brew install romkatv/powerlevel10k/powerlevel10k
  echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
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
