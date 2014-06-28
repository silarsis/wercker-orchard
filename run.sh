#!/bin/bash

set -e
set -x

if [ ! -n "$WERCKER_ORCHARDUP_DEPLOY_TOKEN" ]; then
  fatal 'Please specify token property'
fi

if [ ! -n "$WERCKER_ORCHARDUP_DEPLOY_EXPORT_FILENAME" ]; then
  fatal 'Please specify token property'
fi

if [ ! -n "$WERCKER_ORCHARDUP_DEPLOY_IMAGE_TAG" ]; then
  fatal 'Please specify token property'
fi

sudo apt-get install -y python-pip
cd ${WERCKER_STEP_ROOT}
sudo pip install orchard
python ./deploy.py
