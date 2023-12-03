# Base project for TypeScript server

To upgrade dependencies run:

``
yarn upgrade-interactive --latest  
``

Build docker image:

``
docker build -t esm:latest .
``

Exploring docker image:

``
docker run --rm -it --entrypoint=/bin/sh esm:latest
``

## TODO:
* Add docker-compose.yml
* Add GitHub Actions
* Add unit test example