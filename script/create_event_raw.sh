#!/bin/bash

psql --username=events -f  ./sql/create_events_raw.sql

php ./populate_events_raw.php
