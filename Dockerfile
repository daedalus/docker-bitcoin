FROM debian:latest
MAINTAINER Dario Clavijo <dclavijo@protonmail.com>

ENV RPC_USER rpcuser
ENV RPC_PASS OTEyOWUxYzM1YjhlMTUzNzhmZmZlYTEwZGQ0ZTQ5YmEgIC0K
ENV RPC_ALLOW_IP 127.0.0.1
ENV MAX_CONNECTIONS 15
ENV RPC_PORT 8332
ENV PORT 8333
ENV PROXY 127.0.0.1:9050
ENV DEBUG 1
ENV PRUNE 0
ENV USE_HD 0
ENV TX_INDEX 0

RUN apt-get update && \
    apt-get install -y bitcoind tor && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 8332 8333
VOLUME ["/data/bitcoin"]
CMD ["/usr/bin/bitcoind", "-datadir=/data/bitcoin", "-printtoconsole"]
