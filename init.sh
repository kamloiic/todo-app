#!/bin/bash

echo ""
echo "configuring postgresql database..."
echo ""

sudo su postgres <<EOF
psql -U postgres -c "CREATE DATABASE task;"
psql -U postgres -c "CREATE ROLE taskuser WITH LOGIN PASSWORD '123456';"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE task TO taskuser;"
EOF

echo ""
echo "configuring spring boot backend..."
echo ""

cd backend
gradle clean build 
cd ~/todo-app/ 

echo "ok"

echo ""
echo ""
echo "configuring reactjs frontend..."
echo ""

cd frontend 
yarn install 
cd ~/todo-app/ 

echo "ok"

echo ""
echo ""
echo "running docker compose..."
echo ""

docker compose up --build
echo ""
echo "finished!"
