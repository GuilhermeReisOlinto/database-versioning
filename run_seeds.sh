#!/bin/bash

DB_NAME="postgres"
DB_USER="postgres"
DB_HOST="localhost"
DB_PORT="5432"
DB_PASS="postgres"

source .env

echo "Roling seeds in database $DB_NAME..."

for file in seeds/*sql; do 
    echo "Insert data in $DB_NAME..."
    PGPASSWORD="$DB_PASS" psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f "$file"
done

echo "Seeds completed..."