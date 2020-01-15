#!/bin/sh

set -e 

until psql -h db -U "postgres" -c '\q' 2>/dev/null; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

mix ecto.create
mix ecto.migrate
mix phx.server
