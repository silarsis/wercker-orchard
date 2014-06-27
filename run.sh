#!/bin/bash

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

apt-get install python-pip
pip install -r requirements.txt
