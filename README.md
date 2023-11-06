# UNC System Course Sequence Docker Image

This docker image defines the environment for courses at UNC including
COMP 211, COMP 530, and COMP 730.

## Building from scratch

`docker buildx build .`

For more detailed output, use:

`docker buildx build . --progress=plain`

You can confirm the built image is for multiple architectures using

`docker buildx inspect`

## Push to dockerhub

Dockerhub is configured to automatically build and update the
`comp530:latest` tag upon a push to the master branch.

This can be configured for other image tags in the docker hub page.

Dockerhub also automatically builds images in response to a PR,
which should prevent merging changes that break the build.
