# PostgreSQL E-learning Database (Dockerized)

Proyecto de diseño y escalamiento de una base de datos
para una plataforma de e-learning usando PostgreSQL y Docker.

## Features
- Modelo relacional normalizado
- PK compuestas
- Relaciones N:M
- CASCADE y RESTRICT bien definidos
- Migraciones seguras
- PostgreSQL + Docker Compose

## Run
docker compose up -d

## Reset database
docker compose down -v
docker compose up

## SQL Structure
- schema.sql → tablas
- test.sql → relaciones y casos de prueba
- seed.sql → datos de prueba
