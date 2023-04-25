# Trello App

A simple Trello-like kanban board web app for [Inventive Academy](https://inventiveacademy.io/)'s Full Stack Immersive with Node web development course.

The app consists of a frontend web client built with React, a REST API built with Restify and Sequelize, and a MySQL database for storage. It's set up with Docker for production deployment and development containers, as well as taking care of hosting the database.

## How to host

Instructions on hosting the app in a production environment.

Configuration for the Docker production environment is located in the docker-compose.override.yml file.

## How to develop using a Docker development container

Instructions on hosting and working on the app in a development environment.

Configuration for the Docker development container is located in the docker-compose.dev.yml file.

## This repository uses git submodules

This is the _superproject_ which contains submodule repositories for the app (frontend) and REST API (backend).

For more information on git submodules you can read [this article](https://gist.github.com/gitaarik/8735255) or look at the [git documentation](https://git-scm.com/docs/gitsubmodules).
