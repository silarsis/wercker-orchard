#!/usr/bin/env python

import os
import orchard

client = orchard.with_token(os.environ['WERCKER_ORCHARDUP_DEPLOY_TOKEN'])
docker = client.hosts[os.environ.get('WERCKER_ORCHARDUP_HOST_ID', 'default')].docker()
docker.import_image(
  "%s/%s" % (os.environ['WERCKER_ROOT'], os.environ['WERCKER_ORCHARDUP_DEPLOY_EXPORT_FILENAME'])),
  tag=os.environ['WERCKER_ORCHARDUP_DEPLOY_IMAGE_TAG'])
