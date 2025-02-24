#!/bin/bash

source .env

echo "Roling migrations in database $DB_NAME_CUSTOMERS..."

for file in migrations/customers/*.sql; do
    echo "Exec $file..."
    PGPASSWORD="$DB_PASS_CUSTOMERS" psql -h $DB_HOST_CUSTOMERS -p $DB_PORT_CUSTOMERS -U $DB_USER_CUSTOMERS -d $DB_NAME_CUSTOMERS -f "$file"
done

echo "Migration completed!"