#!/bin/bash

sudo -u postgres psql -f ./sql/config.sql

sudo service postgresql restart


