FROM ubuntu:jammy

RUN apt-get update && \
    apt-get install -y ca-certificates curl gnupg lsb-release