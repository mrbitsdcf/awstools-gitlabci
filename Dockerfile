FROM alpine:latest
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="3.0.1"

RUN \
  apk update && \
  apk add git python py-pip && \
  pip install --upgrade pip awsebcli awscli s3cmd

RUN git config --global advice.detachedHead false
