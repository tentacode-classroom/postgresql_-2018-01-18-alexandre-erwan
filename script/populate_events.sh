#!bin/bash

#on execute les commandes psql qui se trouvent dans populate_events.sql avec l'utilisateur events
psql --usernae=events -f ./sql/populate_events.sql
