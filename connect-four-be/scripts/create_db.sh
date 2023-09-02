#!/bin/bash

read -p "Enter MySQL username: " username
read -s -p "Enter MySQL password: " password
echo

mysql -u "$username" -p"$password" -e "CREATE DATABASE IF NOT EXISTS connect_four;"
if [ $? -eq 0 ]; then
  echo "Database 'connect_four' created successfully."
else
  echo "Failed to create the database. Check your MySQL credentials."
fi
