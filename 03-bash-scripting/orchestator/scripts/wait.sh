#!/bin/bash
set -e

max=10
postgres=0
mongo=0

until psql "$PG_URL" -c '\q' >/dev/null 2>&1; do
    ((postgres++))

    if (( postgres > max )); then
        echo "Postgres no responde después de $max intentos"
        exit 1
    fi

    echo "Esperando Postgres... intento $postgres/$max"
    sleep 2
done

echo "Postgres listo"

until mongosh "$MONGO_URL" --quiet --eval "db.runCommand({ ping: 1 })" \
    >/dev/null 2>&1; do

    ((mongo++))

    if (( mongo > max )); then
        echo "❌ MongoDB no responde después de $max intentos"
        exit 1
    fi

    echo "Esperando MongoDB... intento $mongo/$max"
    sleep 2
done

echo "MongoDB listo"
