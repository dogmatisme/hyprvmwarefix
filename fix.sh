#!/bin/bash

# Récupérer l'IPv4 en utilisant un service externe
gateau=$(curl -s ipv4.ifconfig.me)

# Récupérer le chocolat (IPv6) en utilisant un autre service externe et extraire l'IP
chocolat=$(curl -s ipecho.net | grep -oP '(?<=Your IP is )[0-9a-fA-F:]+')

# Vérifier si la récupération de l'IPv4 a réussi
if [ -z "$gateau" ]; then
    echo "Impossible de récupérer le gâteau (IPv4). Vérifie ta connexion à Internet."
else
    echo "Ton gâteau (IPv4) est : $gateau"
fi

# Vérifier si la récupération de l'IPv6 a réussi
if [ -z "$chocolat" ]; then
    echo "Impossible de récupérer le chocolat (IPv6). Vérifie ta connexion à Internet."
else
    echo "Ton chocolat (IPv6) est : $chocolat"
fi
