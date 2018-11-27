#!/bin/bash
set -ex
if [ "$1" = 'wise' ]; then
    gosu wiseservice node wiseService.js -c /data/moloch/wiseService/wiseService.ini >> /var/log/wise.log 2>&1
else
    exec "$@"
fi