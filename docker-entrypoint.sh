#!/bin/bash
set -eo pipefail

echo "server=1
maxconnections=${MAX_CONNECTIONS}
rpcuser=${RPC_USER}
rpcpassword=${RPC_PASS}
rpcallowip=${RPC_ALLOW_IP}
rpcport=${RPC_PORT}
port=${PORT}
listen=1
daemon=1
proxy=127.0.0.1:9050
debug={$DEBUG}
prune={$PRUNE}
usehd={$USE_HD}
txindex={$TX_INDEX}" > /data/bitcoin/bitcoin.conf

exec "$@"
