#!/bin/bash

source .env

echo "Roling migrations in database $DB_NAME..."

for file in migrations/*.sql; do
    echo "Exec $file..."
    PGPASSWORD="$DB_PASS" psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f "$file"
done

echo "Migration completed!"