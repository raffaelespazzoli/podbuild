# Pod for building images via podman and buildah

Instructions on how to build the image

```shell
docker build . -t podbuild:latest
```

to run a test run this command:

```shell
docker run --volume $(pwd):/tmp/workdir podbuild:latest podman build /tmp/workdir podbuild-inside:latest
```