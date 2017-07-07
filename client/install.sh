#!/bin/bash

source ./install.conf
SS_LOCAL_ETC=/usr/local/etc/go-ss-local

if ! type "brew" > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install golang

# install shadowsocks
export http_proxy=http://$INSTALL_PROXY_HOST:$INSTALL_PROXY_PORT
export https_proxy=https://$INSTALL_PROXY_HOST:$INSTALL_PROXY_PORT
go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local

# setup config
ln -s $HOME/go/bin/shadowsocks-local /usr/local/bin/shadowsocks-local
mkdir -p $SS_LOCAL_ETC
printf '{
    "local_port":1080,
    "server_password": [
        ["%s:%s", "%s", "%s"]
    ]
}' "$SS_SERVER_HOST" "$SS_SERVER_PORT" "$SS_SERVER_PWD" $SS_SERVER_AUTH > $SS_LOCAL_ETC/conf.json

# setup initd
cp sslocal.plist $HOME/Library/LaunchAgents/sslocal.plist
launchctl load $HOME/Library/LaunchAgents/sslocal.plist

# brew install polipo ans setup hp for shell
