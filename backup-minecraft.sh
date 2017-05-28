#!/bin/bash

TODAY=`date '+%Y_%m_%d__%H_%M_%S'`;

rcon-cli say "Starting backup - may lag!"

rcon-cli save-all
rcon-cli save-off

tar -zcvf /backup/world-$TODAY.tar.gz /data/world

rcon-cli save-on

rm -f $(ls -1t /backup/ | tail -n +20)

rcon-cli say "Finished backup"
