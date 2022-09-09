# Bitcoin-core docker image

Bitcoin uses peer-to-peer technology to operate with no central authority or banks; managing transactions and the issuing of bitcoin is carried out collectively by the network. Bitcoin is open-source; its design is public, nobody owns or controls Bitcoin and everyone can take part. Through many of its unique properties, Bitcoin allows exciting uses that could not be covered by any previous payment system.

This Docker image provides bitcoin, bitcoin-cli and bitcoin-tx applications which can be used to run and interact with a bitcoin server.

## Quick Start

    docker run -d --name bitcoin --restart=always -v /data/bitcoin:/data/bitcoin daedalus/bitcoin:latest

## Config options

This container includes support for Bitcoin configuration values. These values can be set when calling `docker run` through the use of environment variables.

The following values are configurable:
* `RPC_USER`
* `RPC_PASS`
* `RPC_ALLOW_IP`
* `MAX_CONNECTIONS`
* `RPC_PORT`
* `PORT`
* `DEBUG`
* `PROXY`

For example, to run the container with the username "DevUser" and a password of "P@ssw0rd123" with 10 max connections, you can run the following:

      docker run -d -e RPC_USER="DevUser" -e RPC_PASS="P@ssw0rd123" -e MAX_CONNECTIONS=10 daedalus/bitcoin:latest

## Data persistence

Coming soon!
