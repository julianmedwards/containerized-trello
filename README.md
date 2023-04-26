# Trello App

A simple Trello-like kanban board web app for [Inventive Academy](https://inventiveacademy.io/)'s Full Stack Immersive with Node web development course.

The app consists of a frontend web client built with React, a REST API built with Restify and Sequelize, and a MySQL database for storage. It's set up with Docker for production deployment and development containers, as well as taking care of hosting the database.

Note that this app is currently not connected to any persistent storage volumes.

## This repository uses git submodules

This is the _superproject_ which contains submodule repositories for the app (frontend) and REST API (backend).

For more information on git submodules you can read [this article](https://gist.github.com/gitaarik/8735255) or look at the [git documentation](https://git-scm.com/docs/gitsubmodules).

### A quick rundown

Clone the repository with `git clone https://github.com/julianmedwards/containerized-trello.git --recurse-submodules` in order to include the submodule code.

Run `bash ./scripts.sh init-repos` to install npm dependencies for the submodules.

Make and commit changes as normal in each submodule's folder, they act as a normal git repo there. Once you've commited your changes in a submodule **you must add and commit the changes again in the parent directory**.

Use `git pull --recurse-submodules` in the main directory or you won't get any changes to the submodules. You can also pull the submodules individually.

## Requirements

-   Docker Desktop or Docker Engine, CLI & Compose
-   Node.js

## How to host

Run the script `bash ./scripts.sh build-prod` which will build the react app and then the docker containers.

Run `bash ./scripts.sh start-prod` to start the docker app with docker compose. It may take a few moments for the database to get running before the api can connect properly.

Connect to localhost:3000 to see the app or query the api on localhost:5000.

`bash ./scripts.sh stop` will stop the app's containers whether in development or production.

Production configuration is found in docker-compose.override.yml

## How to develop using a Docker development container/environment

You can run the app in a Docker development environment while editing on your host machine with hot reloading. You will be able to edit both the react app and the api.

Run `bash ./scripts.sh build-dev` to build the docker containers.

Run `bash ./scripts.sh start-dev` to bring up the containers.

Connect to localhost:3001 to see the app or query the api on localhost:5000.

`bash ./scripts.sh stop` will stop the app's containers whether in development or production.

Docker dev container configuration is found in docker-compose.dev.yml
