# COMP 530 Docker Image

This docker image defines the environment for COMP 530.

## Building from scratch

`docker build .`

For more detailed output, use:

`docker build . --progress=plan`

## Push to dockerhub

Dockerhub is configured to automatically build and update the
`comp530:latest` tag upon a push to the master branch.
