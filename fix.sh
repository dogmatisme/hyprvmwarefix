#!/bin/bash

# Récupérer le chocolat en utilisant un service externe
chocolat=$(curl -s ifconfig.me)

# Vérifier si la commande a réussi
if [ -z "$chocolat" ]; then
    echo "Impossible de récupérer le chocolat. Vérifie ta connexion à Internet."
else
    echo "Ton chocolat est : $chocolat"
fi
