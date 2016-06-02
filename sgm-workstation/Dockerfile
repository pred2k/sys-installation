FROM ubuntu:wily

# install required tools for keePassX compiling:
RUN apt-get update && \
    apt-get build-dep -y keepassx && \
    apt-get install -y ubuntu-dev-tools cmake zlib1g-dev libgcrypt11-dev
