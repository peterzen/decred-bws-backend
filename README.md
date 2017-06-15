
# Dockerized bitcore-wallet-service deployment

This repository contains configuration for deploying [BWS](https://github.com/decred/bitcore-wallet-service) and all its dependencies in a Docker environment.

## Components

 - [dcrd](https://github.com/decred/dcrd)
 - [Insight API](https://github.com/decred/insight-api)
 - MongoDB
 - [bitcore-wallet-service](https://github.com/decred/bitcore-wallet-service)

## Prerequisites

 - Running [Docker](https://www.docker.com/) node
 - If the node you're running is on a remote host:
 ```
 export DOCKER_HOST=tcp://<IP address>:2375
 ```

## Usage

```bash
git clone --recursive https://github.com/peterzen/decred-bws-backend

cd decred-bws-backend

./build.sh
```

This will build the containers for each service.  To run:

```bash
./start.sh
```
