#!/bin/bash

# DB_NAME_CUSTOMERS="postgres"
# DB_USER_CUSTOMERS="postgres"
# DB_HOST_CUSTOMERS="localhost"
# DB_PORT_CUSTOMERS="5432"
# DB_PASS_CUSTOMERS="postgres"

source .env

echo "Roling seeds in database $DB_NAME_CUSTOMERS..."

for file in seeds/customers/*sql; do 
    echo "Insert data in $DB_NAME_CUSTOMERS..."
    PGPASSWORD="$DB_PASS_CUSTOMERS" psql -h $DB_HOST_CUSTOMERS -p $DB_PORT_CUSTOMERS -U $DB_USER_CUSTOMERS -d $DB_NAME_CUSTOMERS -f "$file"
done

echo "Seeds completed..."