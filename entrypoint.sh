#!/bin/sh

set -e

cat << EOF >  $HOME/.rcon-cli.yaml
host: ${RCON_HOST}
password: ${RCON_PASSWORD}
port: ${RCON_PORT}

EOF

$@
