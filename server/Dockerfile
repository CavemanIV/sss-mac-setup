FROM golang:latest

MAINTAINER mosilent <mosilent@outlook.com>

WORKDIR /go/bin

RUN go get -u -v github.com/shadowsocks/go-shadowsocks2

EXPOSE 1080

CMD go-shadowsocks2 -s ss://${METHOD}:${CONN_PWD}@:1080 -verbose
