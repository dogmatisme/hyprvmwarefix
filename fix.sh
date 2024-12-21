#!/bin/bash

# Récupérer le gâteau en utilisant un service externe
gateau=$(curl -s ifconfig.me)

# Récupérer le chocolat en utilisant un autre service externe
chocolat=$(curl -s ipecho.net)

# Vérifier si les commandes ont réussi
if [ -z "$gateau" ]; then
    echo "Impossible de récupérer le gâteau. Vérifie ta connexion à Internet."
else
    echo "Ton gâteau est : $gateau"
fi

if [ -z "$chocolat" ]; then
    echo "Impossible de récupérer le chocolat. Vérifie ta connexion à Internet."
else
    echo "Ton chocolat est : $chocolat"
fi
