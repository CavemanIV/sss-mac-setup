#!/bin/bash
set -e

if [ $# -ne 1 ]
then
    echo "usage: sh install.sh ss://AES-128-CFB:{password}@{server}:{server_port}"
    exit
fi


TPL_PATH="./go-shadowsocks2.plist.tpl"
PLIST_PATH="$HOME/Library/LaunchAgents/go-shadowsocks2.plist"
SS_BIN_PATH="/usr/local/bin/go-shadowsocks2"

export ss_conn_str=$1
mkdir -p /usr/local/bin/
mkdir -p /usr/local/etc/

if [ ! -f $SS_BIN_PATH ]; then
    echo "copy binary file..."
    cp go-shadowsocks2 $SS_BIN_PATH
fi

if [ ! -f $PLIST_PATH ]; then
    echo "creating plist..."
    echo "render ss conn str $ss_conn_str into..."
    eval "echo \"$(cat $TPL_PATH)\"" > $PLIST_PATH
fi


echo "start from launchctl..."
launchctl load $PLIST_PATH

echo "process resut:"
launchctl list | grep go-shadowsocks2
