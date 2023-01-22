#!/bin/bash

# Location of the applications folder
app_folder="applicazioni"

# Check if the applications folder exists
if [ ! -d "$app_folder" ]; then
  echo "The applications folder does not exist. Exiting script."
  exit 1
fi

# Change directory to the applications folder
cd "$app_folder"

# Assign execute permissions to all .sh files
for file in *.sh; do
  if [ ! -x "$file" ]; then
    chmod +x "$file"
  fi
done

# Execute all .sh files
for file in *.sh; do
  ./"$file"
done
