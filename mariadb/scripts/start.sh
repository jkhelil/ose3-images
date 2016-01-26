#!/bin/bash

if [ -x /scripts/config.sh ]; then
  # Initial configuration
  /scripts/config.sh || exit 1
fi

rm -f /run/mysqld/mysqld.sock
exec /usr/bin/mysqld_safe