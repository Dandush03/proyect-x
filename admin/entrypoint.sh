#!/bin/bash

set -e

if [[ $RAILS_ENV == 'production' ]]; then
  yarn build
  serve -l 3000 -s build
else
  exec "$@"
fi
  
