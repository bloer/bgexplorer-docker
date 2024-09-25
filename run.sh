#!/bin/bash

SECRETS_FILE=.secret_key
if ! [ -f $SECRETS_FILE ] ; then
    echo "Generating $SECRETS_FILE ..."
    SECRET=$(cat /dev/urandom | tr -dc '[:alnum:]' | head -c 40)
    echo "SECRET_KEY =\"${SECRET}\"" >$SECRETS_FILE
fi
chmod 640 $SECRETS_FILE

docker compose up

