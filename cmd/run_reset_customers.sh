#!/bin/bash

source .env

echo "Resetting database $DB_NAME_CUSTOMERS..."

PGPASSWORD="$DB_PASS_CUSTOMERS" psql -h $DB_HOST_CUSTOMERS -p $DB_PORT_CUSTOMERS -U $DB_USER_CUSTOMERS -c "DROP DATABASE $DB_NAME_CUSTOMERS;"
PGPASSWORD="$DB_PASS_CUSTOMERS" psql -h $DB_HOST_CUSTOMERS -p $DB_PORT_CUSTOMERS -U $DB_USER_CUSTOMERS -c "CREATE DATABASE $DB_NAME_CUSTOMERS;"

./run_migrations_customers.sh
./run_seeds_customers.sh

echo "Database reset and recreate"