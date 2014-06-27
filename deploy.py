#!/usr/bin/env python

import orchard

client = orchard.with_token(ENV['ORCHARD_TOKEN'])
docker = client.hosts[ENV.get('ORCHARD_HOST_ID', 'default')].docker()
docker.import_image(open("%s/arbitrage.tar" % ENV['WERCKER_OUTPUT_DIR']), tag='arbitrage')
