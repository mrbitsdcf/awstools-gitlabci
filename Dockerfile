FROM alpine:3.5

RUN \
  apk update && \
  apk add git python py-pip && \
  pip install --upgrade pip awsebcli

RUN git config --global advice.detachedHead false
