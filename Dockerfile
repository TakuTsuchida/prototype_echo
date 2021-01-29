FROM golang:1.15.7-alpine as build
ENV GOPATH=
WORKDIR /go
COPY . /go/
RUN apk update && \
    apk add --no-cache git