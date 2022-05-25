sudo su postgres <<EOF
psql -U postgres -c "CREATE DATABASE task;"
psql -U postgres -c "CREATE ROLE taskuser WITH LOGIN PASSWORD '123456';"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE task TO taskuser;"
EOF
cd backend
gradle clean build 
java -jar build/libs/todoapp-0.0.1-SNAPSHOT.jar

