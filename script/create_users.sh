#!/bin/bash

#on execture les fichiers create_users et create_eventuser pouis on verifier que ceux-ci on bien été crée
sudo -u postgres psql -f ./sql/create_users.sql

psql --username super_admin -c "SELECT 'Je suis connecté en super admin.';"

psql --username=events -f ./sql/create_eventuser

psql --username=events -c "SELECT 'Je suis connecté en events.' ;"

