#!/bin/bash

if [ ! -n "$ORCHARD_TOKEN" ]; then
  fatal 'Please specify token property'
fi

pip install -r requirements.txt
