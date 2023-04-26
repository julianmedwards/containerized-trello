#!/bin/bash

function build-dev () {
    docker compose -f docker-compose.yml -f docker-compose.dev.yml build
}

function start-dev () {
    docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d
}

function build-prod () {
    cd trello-react-app && npm run build && cd ..
    docker compose build
}

function start-prod () {
    docker compose up -d
}

function stop () {
    docker compose down
}

eval "$@"