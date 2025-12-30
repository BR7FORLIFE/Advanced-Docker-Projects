#!/bin/bash

set -e 

echo "exportando mongo..."

mongosh "$MONGO_URL" --quiet \ 
    --eval 'JSON.stringify(db.users.find().toArray())' | jq '.' > exports/users_mongo.json