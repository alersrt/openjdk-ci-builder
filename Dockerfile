FROM openjdk
RUN yum updateinfo && yum install -y \ 
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
    && yum clean all

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/alersrt/openjdk-ci-builder"

ENTRYPOINT ["uname", "a"]