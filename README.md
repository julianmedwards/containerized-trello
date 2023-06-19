# Trello App

### You can view this app [here](https://trello.mejulian.dev/)!

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

Run `bash ./scripts.sh init-repos` to install npm dependencies for the submodules. This will also clone the submodules in case you forgot.

### Handling changes

Commit and push changes as normal in each submodule's folder, they act as a normal git repo there. Once you've pushed your changes in a submodule **you must commit and push the changes again in the parent directory**.

Use `git pull --recurse-submodules` in the main directory or you won't get any changes to the submodules. You can also pull the submodules individually.

## How to host

In production you can use any static file hosting solution to serve the client. This project is currently using [Vercel](https://vercel.com/). You must build the client with the VITE_API_ADDRESS (in format https://domain-name.end/) and VITE_API_PORT environment variables set.

As currently set up, the web server requires SSL certification and will be served through HTTPS if you run in production. Also make sure the API_DOMAIN_NAME variable is accurate in the .env file.

The app is not set up to use an actual persistent volume for data storage, all data will be in the database Docker container.

-   `bash ./scripts.sh build-prod` to build the docker containers (API and MySQL database).

-   `bash ./scripts.sh start-prod` to start the app for production.

## How to develop on your local machine using docker.

You can run the app in Docker while editing on your host machine with hot reloading. You will be able to edit both the react app and the api.

-   `bash ./scripts.sh build-dev` will build the docker containers (client, API and database).

-   `bash ./scripts.sh start-dev` to start the app for development.

-   Connect to **localhost:3000** to see the app or query the api on **localhost:5000**.

## Stopping the app

`bash ./scripts.sh` + `stop-prod` or `stop-dev` will stop the app's containers in development or production.
