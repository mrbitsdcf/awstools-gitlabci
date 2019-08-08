FROM alpine:latest
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="2.0.0"


RUN \
  apk update && \
  apk add git python py-pip && \
  pip install --upgrade pip awsebcli

RUN git config --global advice.detachedHead false
