#!/bin/bash

echo "Enter MySQL password:"
read -s password

for database in $(mysql -u root -p"$password" -e 'show databases' -s --skip-column-names); do
    # Ignore mysql auto-generated tables
    if [ $database != "mysql" ] && [ $database != "information_schema" ] && [ $database != "performance_schema" ]; then
        echo "Archiving $database"
        mysqldump -u root -p"$password" "$database" > "/root/backups/mysql-$database.sql"
    fi
done
