#!/bin/bash

set -x

if [ ! -n "$WERCKER_ORCHARDUP_DEPLOY_TOKEN" ]; then
  fatal 'Please specify token property'
fi

if [ ! -n "$WERCKER_ORCHARDUP_DEPLOY_EXPORT_FILENAME" ]; then
  fatal 'Please specify token property'
fi

curl -L -o ./orchard https://github.com/orchardup/go-orchard/releases/download/2.0.7/linux
chmod +x ./orchard
ORCHARD_API_TOKEN=${WERCKER_ORCHARDUP_DEPLOY_TOKEN} ./orchard docker load ${WERCKER_ROOT}/${WERCKER_ORCHARDUP_DEPLOY_EXPORT_FILENAME}
success "Successfully deployed to Orchard ready for restart"
