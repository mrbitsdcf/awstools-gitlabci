FROM alpine:3.5
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.1.1"


RUN \
  apk update && \
  apk add git python py-pip && \
  pip install --upgrade pip awsebcli

RUN git config --global advice.detachedHead false
