#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL
    CREATE DATABASE modernproject;

    CREATE USER django;
    CREATE USER root;

    ALTER USER django CREATEDB;
    ALTER USER root CREATEDB;

    GRANT ALL PRIVILEGES ON DATABASE modernproject TO django;
EOSQL