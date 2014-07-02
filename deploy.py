#!/usr/bin/env python

import os
import ast
import orchard

print "Initialising"
client = orchard.with_token(os.environ['WERCKER_ORCHARDUP_DEPLOY_TOKEN'])
print "client established"
docker = client.hosts[os.environ.get('WERCKER_ORCHARDUP_HOST_ID', 'default')].docker()
print "host retrieved"
img = docker.import_image(
  "%s/%s" % (os.environ['WERCKER_ROOT'], os.environ['WERCKER_ORCHARDUP_DEPLOY_EXPORT_FILENAME']),
  repository="wercker/",
  tag=os.environ['WERCKER_ORCHARDUP_DEPLOY_IMAGE_TAG'])
print "docker image imported", img
imgName = ast.literal_eval(img)['status']
