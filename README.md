# nick-notes-neatly

### Introduction
This project allows a developer to capture notes in markdown files that are rendered on localhost as an html page using [Rust's mdBook](https://rust-lang.github.io/mdBook/).

### Pre-requisites
- Docker
- VS Code with Remote-Containers extension installed

### How to setup
This repository is setup to use devcontainers on VS Code that allows for seamless development without worrying about building or running the dependent docker images.

It does this by utilizing the [Docker-from-Docker configuration](https://github.com/microsoft/vscode-dev-containers/tree/main/containers/docker-from-docker) to build and run a docker container from within the devcontainer using locally mounted directories. This enables us to track the changes made to the mdbook in real-time using port forwarding.

To begin using this setup:
- Clone the repo locally
- Open root directory (`nick-notes-neatly`) in VS Code
- VS Code will detect the presence of devcontainer file
    - When prompted, select `Rebuild and Reopen in a container`
    - If the prompt doesn't come up, on VS Code, press `Cmd + Shift + P` and search for `Rebuild and Reopen in a container`
- On your browser of choice, open [localhost:1010](http://localhost:1010)
- You're all set for taking notes on markdown files that can be accessed within the `src` folder!
    - You can edit the `src/SUMMARY.md` file to design your "book" the way you want