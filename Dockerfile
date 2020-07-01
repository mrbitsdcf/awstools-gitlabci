FROM alpine:latest
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="3.0.5"

RUN apk --update add git python py-pip openssl ca-certificates py-openssl wget
RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev py-pip build-base

RUN pip install --upgrade pip awsebcli awscli s3cmd

RUN git config --global advice.detachedHead false

RUN apk del build-dependencies
