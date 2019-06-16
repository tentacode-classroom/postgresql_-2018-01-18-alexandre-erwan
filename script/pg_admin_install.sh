#!/bin/bash


#on install le paquet pour pg admin
sudo apt-get install pgadmin4 -y

#on execture les commande sql qui se trouvent dans pg_admin_install.sql
psql --username=super_admin -f ./sql/pg_admin_install.sql

#on redemarre le service pour que les changements soient pris en compte
sudo service postgresql restart
