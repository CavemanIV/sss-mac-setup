Client:
1. sudo sh install.sh
2. manually install chrome extension, setup shell hp, polipo etc

Server:
1. install docker
2. change password etc in dockerfile
3. docker build --rm -f ssgo_server.dockerfile -t ssgo .
4. docker run --rm -d --rm -p port:port ssgo
