# Base project for TypeScript server

Updating node.js:
```
fnm install 22.13.1

fnm default 22.13.1

npm i -g yarn
```

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
* Add config
* Add GitHub Actions