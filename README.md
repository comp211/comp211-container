# UNC System Course Sequence Docker Image

This docker image defines the environment for courses at UNC including
COMP 211, COMP 530, and COMP 730.

## Building from scratch

`docker buildx build .`

For more detailed output, use:

`docker buildx build . --progress=plain`

You can confirm the built image is for multiple architectures using

`docker image inspect TAG`

where "TAG" is the name of the image.

The full command to build and push (requires privilege) is:

`docker buildx build --tag index.docker.io/learncli/comp211:latest --platform linux/amd64,linux/arm64 --push .`

## Push to dockerhub

Dockerhub is configured to automatically build and update the
`comp211:latest` tag upon a push to the master branch.

This can be configured for other image tags in the docker hub page.

Dockerhub also automatically builds images in response to a PR,
which should prevent merging changes that break the build.
