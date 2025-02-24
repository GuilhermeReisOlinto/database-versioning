#!/bin/bash

source .env

echo "Resetting database $DB_NAME_LOGINS..."

PGPASSWORD="$DB_PASS_LOGINS" psql -h $DB_HOST_LOGINS -p $DB_PORT_LOGINS -U $DB_USER_LOGINS -c "DROP DATABASE $DB_NAME_LOGINS;"
PGPASSWORD="$DB_PASS_LOGINS" psql -h $DB_HOST_LOGINS -p $DB_PORT_LOGINS -U $DB_USER_LOGINS -c "CREATE DATABASE $DB_NAME_LOGINS;" 

./run_migrations_logins.sh
./run_seeds_logins.sh

echo "Database reset and recreate"