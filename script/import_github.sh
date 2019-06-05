#!/bin/bash

#suppression des fichier si ils existent deja
sudo rm -rf ../resources/2015-01-01-15-.json

#recuperation du fichier sous forme d'archive
wget https://data.gharchive.org/2015-01-01-15.json.gz

#on extrait l'archive dans le fichier
gunzip 2015-01-01-15.json
sudo mv 2015-01-01-15.json ../resources/2015-01-01-15.json
sudo rm -rf 2015-01-01-15.json.gz
