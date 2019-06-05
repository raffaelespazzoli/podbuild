# Pod for building images via podman and buildah

Instructions on how to build the image

docker build . -t podbuild:latest

docker run --volume $(pwd):/tmp/workdir podbuild:latest podman build /tmp/workdir podbuild-inside:latest