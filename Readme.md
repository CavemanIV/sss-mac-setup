Client:
1. fill in config.json
2. setup console proxy in install.sh
3. sudo sh install.sh, it will install brew
4. manually install chrome extension

Server:
1. install docker
2. change password etc in dockerfile
3. docker build --rm -f ssgo_server.dockerfile -t ssgo .
4. docker run --rm -d --rm -p port:port ssgo
