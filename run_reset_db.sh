#!/bin/bash

source .env

echo "Resetting database $DB_NAME..."

PGPASSWORD="$DB_PASS" psql -h $DB_HOST -p $DB_PORT -U $DB_USER -c "DROP DATABASE $DB_NAME;"
PGPASSWORD="$DB_PASS" psql -h $DB_HOST -p $DB_PORT -U $DB_USER -c "CREATE DATABASE $DB_NAME;" -s $DB_PASS 

./run_migrations.sh
./run_seeds.sh

echo "Database reset and recreate"