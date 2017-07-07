Client:
1. fill in install.conf
2. sudo sh install.sh, it will install brew
3. manually install chrome extension, import config bak file

Server:
1. install docker
2. change password etc in dockerfile
3. docker build --rm -f ssgo_server.dockerfile -t ssgo .
4. docker run --rm -d --rm -p port:port ssgo
