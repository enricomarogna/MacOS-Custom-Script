#!/bin/bash

# Posizionati nella directory corretta
app_folder="applicazioni"

# Verifica che la directory esista
if [ ! -d "$app_folder" ]; then
  echo "The applications folder does not exist. Exiting script."
  exit 1
fi

# Cambia la directory corrente
cd "$app_folder"

# Assegna i permessi di esecuzione a tutti i file .sh
for file in *.sh; do
  if [ ! -x "$file" ]; then
    chmod +x "$file"
  fi
done

# Imposta il valore iniziale del contatore
counter=1
# Loop attraverso tutti i file nella directory
for file in *_*.sh; do
  # Ottieni il nome del file prima della prima sottolineatura
  prefix=$(echo $file | cut -d'_' -f1)
  # ottieni il nome del file successivo alla prima sottolineatura
  suffix=$(echo $file | cut -d'_' -f2)
  # Rinomina il file con il valore del contatore e il prefisso originale
  mv $file "${counter}_${suffix}"
  # Incrementa il contatore
  ((counter++))
done

# Esegui tutti i file .sh nella directory
for file in *.sh; do
  ./"$file"
done
