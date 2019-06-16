#!/bin/bash

sudo -u postgres psql -f ./sql/config.sql

#on redemarre le service pour que les changements soit pris en compte
sudo service postgresql restart


