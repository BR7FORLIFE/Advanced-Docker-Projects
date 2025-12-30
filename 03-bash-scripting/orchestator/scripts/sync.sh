#!/bin/bash
set -e

exec >> logs/etl.log 2>&1

echo "===== ETL INICIO $(date) ====="

./scripts/wait.sh
./scripts/export_pg.sh
./scripts/export_mongo.sh

echo "===== ETL FIN $(date) ====="
