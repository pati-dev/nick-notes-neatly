# nick-notes-neatly

### Introduction
This project allows a developer to capture notes in markdown files that are rendered on localhost as an html page using [Rust's mdBook](https://rust-lang.github.io/mdBook/).

### Pre-requisites
- Docker
- VS Code

### How to
This repository is setup with a devcontainer that allows for seamless development within VS Code. In fact, it uses the [Docker-from-Docker configuration](https://github.com/microsoft/vscode-dev-containers/tree/main/containers/docker-from-docker) to build and run a docker container from within the devcontainer using locally mounted directories. This enables us to track the changes made to the mdbook in real-time using port forwarding ([localhost:1010](http://localhost:1010)).