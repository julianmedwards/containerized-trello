# Trello App

A simple Trello-like kanban board web app for [Inventive Academy](https://inventiveacademy.io/)'s Full Stack Immersive with Node web development course.

The app consists of a frontend web client built with React, a REST API built with Restify and Sequelize, and a MySQL database for storage. It's set up with Docker for production deployment and development containers, as well as taking care of hosting the database.

Note that this app is currently not connected to any persistent storage volumes.

## Requirements

-   Docker Desktop or Docker Engine, CLI & Compose
-   Node.js

## Initial setup

### This project uses git submodules

This is the _superproject_ which contains submodule repositories for the app (frontend) and REST API (backend).

For more information on git submodules you can read [this article](https://gist.github.com/gitaarik/8735255) or look at the [git documentation](https://git-scm.com/docs/gitsubmodules).

### Getting it on your system

Clone the repository with `git clone https://github.com/julianmedwards/containerized-trello.git --recurse-submodules` in order to include the submodule code.

Run `bash ./scripts.sh init-repos` to install npm dependencies for the submodules.

### Handling changes

Make and commit changes as normal in each submodule's folder, they act as a normal git repo there. Once you've commited your changes in a submodule **you must add and commit the changes again in the parent directory**.

Use `git pull --recurse-submodules` in the main directory or you won't get any changes to the submodules. You can also pull the submodules individually.

## How to host

-   `bash ./scripts.sh build-prod` will build the react app from source with Vite and then all docker containers.

-   `bash ./scripts.sh start-prod` to start the app for production. It may take ~30 seconds for the database to get going.

-   Connect to **localhost:3000** to see the app or query the api on **localhost:5000**.

Production configuration is found in docker-compose.override.yml

## How to develop on your local machine using docker.

You can run the app in Docker while editing on your host machine with hot reloading. You will be able to edit both the react app and the api.

-   `bash ./scripts.sh build-dev` will build and bind the submodule directories to their respective containers.

-   `bash ./scripts.sh start-dev` to start the app for development. It may take ~30 seconds for the database to get going.

-   Connect to **localhost:3001** to see the app or query the api on **localhost:5000**.

Docker dev container configuration is found in docker-compose.dev.yml

## Stopping the app

`bash ./scripts.sh stop` will stop the app's containers whether in development or production.
