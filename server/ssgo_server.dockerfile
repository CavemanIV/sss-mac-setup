FROM golang:latest

MAINTAINER mosilent <mosilent@outlook.com>

WORKDIR /go/bin

ENV SSPWD !yourpassword!
ENV SSPORT 21
ENV SSMETHOD aes-128-cfb

RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
#RUN export PWD=${PWD}
#RUN export PORT=${PORT}
#RUN export METHOD=${METHOD}

EXPOSE ${SSPORT}

CMD shadowsocks-server -k ${SSPWD} -p ${SSPORT} -t 60 -m ${SSMETHOD}
