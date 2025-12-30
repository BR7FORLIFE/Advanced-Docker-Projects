#!/bin/bash

set -e 

echo "exportando datos" #STDOUT

psql "$PG_URL" -c "\copy users TO STDOUT CSV HEADER" > exports/user_pg.csv

