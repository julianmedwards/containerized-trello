#!/bin/bash

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

function stop-prod () {
    docker compose down
}

eval "$@"