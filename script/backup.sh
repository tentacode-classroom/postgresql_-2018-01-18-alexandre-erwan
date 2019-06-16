#!/bin/bash

# backup bdd
pg_dump --username=super_admin --dbname=github_events -f ./backup/backup_github_events.sql

# backup roles
pg_dumpall --roles-only --username=super_admin -f backup/backup_github_events_roles.sql
