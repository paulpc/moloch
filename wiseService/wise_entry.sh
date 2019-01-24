#!/bin/sh
if [ "$1" = 'wise' ]; then
    su-exec wiseservice:wiseservice node wiseService.js -c /data/enrichment/wise/wiseService.ini
else
    su-exec wiseservice:wiseservice "$@"
fi