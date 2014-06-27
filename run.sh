#!/bin/bash

if [ ! -n "$ORCHARD_TOKEN" ]; then
  fatal 'Please specify token property'
fi

apt-get install python-pip
pip install -r requirements.txt
