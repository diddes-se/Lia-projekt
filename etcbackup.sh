#!/bin/bash

# Skriver ut tid och datum när scriptet börjar köras
echo 'Startar push'
date +'%a %e %b %y %H:%M:%S'

# Sökväg till repo – antas vara ett git-repo
REPO_DIR="/etc"

# Kontrollera att repo existerar
if [ ! -d "$REPO_DIR/.git" ]; then
  echo "Fel: $REPO_DIR är inte ett giltigt Git-repo."
  exit 1
fi


cd "$REPO_DIR" || exit 1

# Push
git push

# Skriver ut en radbrytning när scriptet är färdigt (för tydlighet i loggen)
echo '****************'
