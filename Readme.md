Client:
1. sudo sh install.sh
2. manually install chrome extension, setup shell hp, polipo etc

Server:
1. docker build . -t go-shadowsocks2 --rm
2. copy and fill env_file.list
3. docker run --rm -d -p <EXPOSE_PORT>:1080 --env-file ./env_file.list go-shadowsocks2
