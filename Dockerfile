# Docker image for the Drone Azure Storage plugin
#
#     cd $GOPATH/src/github.com/drone-plugins/drone-azure-storage
#     make deps build docker

FROM alpine:3.2

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD drone-azure-storage /bin/
ENTRYPOINT ["/bin/drone-azure-storage"]