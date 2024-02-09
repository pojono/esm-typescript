# Base project for TypeScript server

Updating node.js:
``
fnm install 20.11.0
fnm default 20.11.0
npm i -g yarn
``

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