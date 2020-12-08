FROM openjdk
RUN microdnf update -y && microdnf install -y \ 
    openssh-clients \
    ca-certificates \ 
    bash \
    git \
    make \
    curl \ 
    rsync \ 
    protobuf \
    openssl-devel \
    util-linux \
    && update-ca-trust \
    && microdnf clean all

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/alersrt/openjdk-ci-builder"