#!/bin/bash

function init-repos () {
    git submodule init
    git submodule update
    cd trello-react-app && npm install && cd ..
    cd trello-api-sql && npm install && cd ..
}

function build-dev () {
    docker compose -f docker-compose.yml -f docker-compose.dev.yml build
}

function start-dev () {
    docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d
}

function build-prod () {
    docker compose build
}

function start-prod () {
    docker compose up -d
}

function stop () {
    docker compose down
}

eval "$@"