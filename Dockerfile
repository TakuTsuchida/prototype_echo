FROM golang:1.15.7-alpine as build
ENV GOPATH=
WORKDIR /go
COPY . /go/
RUN apk update && \
    apk add --no-cache git && \
    go get -u github.com/cosmtrek/air && \
    go build -o /usr/local/go/bin github.com/cosmtrek/air