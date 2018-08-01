#! /bin/bash

# retrieves the randomly-generated postgres password
docker-compose exec -T stellar sh -c "cat /opt/stellar/postgresql/.pgpass"
