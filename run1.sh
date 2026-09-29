#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Erreur : argument manquant"
    echo "Usage : ./run1.sh nom_du_graphe"
    exit 1
fi

tool=neato

$tool -Tpng "$1.dot" > "$1.png"
$tool -Tsvg "$1.dot" > "$1.svg"
