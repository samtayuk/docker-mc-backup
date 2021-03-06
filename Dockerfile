FROM alpine

RUN apk --no-cache add tar gzip bash

ADD https://github.com/itzg/rcon-cli/releases/download/1.3/rcon-cli_linux_amd64 /usr/local/bin/rcon-cli
ADD entrypoint.sh /entrypoint.sh
ADD backup-minecraft.sh /usr/local/bin/backup-minecraft
RUN chmod +x /usr/local/bin/rcon-cli && \
  chmod +x /usr/local/bin/backup-minecraft && \
  chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

ENV RCON_HOST=minecraft RCON_PORT=25575 RCON_PASSWORD=minecraft

RUN bash
