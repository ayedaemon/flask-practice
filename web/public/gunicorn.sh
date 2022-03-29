#!/bin/sh

HOST=0.0.0.0
PORT=80
EXTRA_ARGS=''

if [[ -n $1 ]]
then
  PORT=$1
  EXTRA_ARGS="--chdir ./web/ --reload"
fi

source venv/bin/activate
set -x
exec gunicorn ${EXTRA_ARGS} \
app:app \
--access-logfile - \
--error-logfile - \
-w 4 --threads 4 \
-b ${HOST}:${PORT}