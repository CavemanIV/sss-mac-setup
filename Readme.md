Server:
1. install docker
2. change password etc in dockerfile
3. docker build --rm -f ssgo_server.dockerfile -t ssgo .
4. docker run --rm -d --rm -p port:port ssgo

Client:
1. ensure brew is installed
2. fill in config.json
3. sudo sh install.sh
4. manually install chrome extension, setup hp
