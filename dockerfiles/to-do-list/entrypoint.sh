#!/bin/bash -l

set -e

if [ -z "$RAILS_ENV" ]; then
  RAILS_ENV=development
fi

if [ -z "$BRANCH" ]; then
  BRANCH=dev
fi

if [ $# -eq 0]; then
  /bin/bash
else
  exec "$@"
fi
