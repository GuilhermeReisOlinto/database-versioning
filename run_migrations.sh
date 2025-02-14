#!/bin/bash

DB_NAME="postgres"
DB_USER="postgres"
DB_HOST="localhost"
DB_PORT="5432"
DB_PASS="postgres"

echo "Roling migrations in database $DB_NAME..."

for file in migrations/*.sql; do
    echo "Exec $file..."
    PGPASSWORD="$DB_PASS" psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f "$file"
done

echo "Migration completed!"