#!/bin/bash

brew install golang
go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local

mkdir -p /usr/local/etc/sslocal/
cp conf.json /usr/local/etc/sslocal/conf.json
ln -s $HOME/go/bin/shadowsocks-local /usr/local/bin/shadowsocs-local

cp sslocal.plist $HOME/Library/LaunchAgents/sslocal.plist
launchctl load $HOME/Library/LaunchAgents/sslocal.plist

# brew install polipo
# hp
