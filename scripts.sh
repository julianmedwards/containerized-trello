#!/bin/bash

function init-repos () {
    git submodule init
    git submodule update
    cd trello-react-app && npm install && cd ..
    cd trello-api-sql && npm install && cd ..
}

function build-dev () {
    docker compose -f docker-compose.dev.yml build
}

function start-dev () {
    docker compose -f docker-compose.dev.yml up -d
}

function stop-dev () {
    docker compose -f docker-compose.dev.yml down
}

function build-prod () {
    docker compose -f docker-compose.prod.yml build
}

function start-prod () {
    docker compose -f docker-compose.prod.yml  up
}

function stop-prod () {
    docker compose -f docker-compose.prod.yml down
}

eval "$@"