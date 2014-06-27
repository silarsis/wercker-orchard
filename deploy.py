#!/usr/bin/env python

import orchard

client = orchard.with_token(ENV['WERCKER_ORCHARDUP_DEPLOY_TOKEN'])
docker = client.hosts[ENV.get('WERCKER_ORCHARDUP_HOST_ID', 'default')].docker()
docker.import_image(open("%s/%s" % (ENV['WERCKER_OUTPUT_DIR'], ENV['WERCKER_ORCHARDUP_DEPLOY_EXPORT_FILENAME']), tag=ENV['WERCKER_ORCHARDUP_DEPLOY_IMAGE_TAG'])
