#!/bin/bash

export http_proxy=http://localhost:8123
export https_proxy=https://localhost:8123

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install golang
go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local

mkdir -p /usr/local/etc/go-ss-local/
cp conf.json /usr/local/go-ss-local/conf.json
ln -s $HOME/go/bin/shadowsocks-local /usr/local/bin/shadowsocks-local

cp sslocal.plist $HOME/Library/LaunchAgents/sslocal.plist
launchctl load $HOME/Library/LaunchAgents/sslocal.plist

# brew install polipo
# hp
