FROM fedora:29


ENV USER_HOME_DIR="/root"

ARG CONTAINER_TOOL_PKGS="buildah podman"

USER root

RUN dnf -y update \
    && dnf -y install --nodocs $CONTAINER_TOOL_PKGS \
    && dnf -y clean all

ENV BUILDAH_ISOLATION chroot
ENV STORAGE_DRIVER vfs