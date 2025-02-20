#!/bin/bash

source .env

echo "Roling migrations in database $DB_NAME_LOGINS..."

for file in migrations/logins/*.sql; do
    echo "Exec $file..."
    PGPASSWORD="$DB_PASS_LOGINS" psql -h $DB_HOST_LOGINS -p $DB_PORT_LOGINS -U $DB_USER_LOGINS -d $DB_NAME_LOGINS -f "$file"
done

echo "Migration completed!"