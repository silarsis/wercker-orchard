#!/bin/bash

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
sudo pip install orchard
python deploy.py
