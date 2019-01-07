#!/bin/bash
set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

touch tmp/caching-dev.txt


exec bundle exec "$@"

