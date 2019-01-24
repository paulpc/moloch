#!/bin/bash
set -ex
if [ "$1" = 'wise' ]; then
    gosu wiseservice node wiseService.js -c /data/enrichment/wise/wiseService.ini
else
    exec "$@"
fi