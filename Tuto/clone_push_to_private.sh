#!/bin/bash
# run avec :
# chmod +x bonjour.sh      # (à faire une seule fois pour rendre le script exécutable)
# ./bonjour.sh Alice 30

# Les éléments $n sont les arguments données à notre fichier .sh

# Set the initial URL 
url_to_clone=$1
name_of_repo=$2

# DO : Create a repo on github that has no ReadMe.md file and get its URL
url_to_main=$3

git clone $url_to_clone

cd $name_of_repo

git remote set-url origin url_to_main

# Test 
git remote -v

git push -u origin main
#git push -u origin master
