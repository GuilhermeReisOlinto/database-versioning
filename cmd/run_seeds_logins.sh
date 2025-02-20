#!/bin/bash

# DB_NAME_LOGINS="postgres"
# DB_USER_LOGINS="postgres"
# DB_HOST_LOGINS="localhost"
# DB_PORT_LOGINS="5432"
# DB_PASS_LOGINS="postgres"

source .env

echo "Roling seeds in database $DB_NAME_LOGINS..."

for file in seeds/logins/*sql; do 
    echo "Insert data in $DB_NAME_LOGINS..."
    PGPASSWORD="$DB_PASS_LOGINS" psql -h $DB_HOST_LOGINS -p $DB_PORT_LOGINS -U $DB_USER_LOGINS -d $DB_NAME_LOGINS -f "$file"
done

echo "Seeds completed..."