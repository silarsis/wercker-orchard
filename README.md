wercker-orchard
===============

[![wercker status](https://app.wercker.com/status/727752ac9c747c8efb3d4ec0a2b8faf9/m "wercker status")](https://app.wercker.com/project/bykey/727752ac9c747c8efb3d4ec0a2b8faf9)

Deploy to orchard from Wercker

This step takes the following arguments:

* token - your Orchard token, found at https://www.orchardup.com/docs/api
* export_filename - the filename you will write your docker container to from
  the build process
* image_tag - the docker tag to apply to your image once uploaded (repository
  will be set to 'wercker')
* host_id - defaults to 'default' for the default orchard host

This step only sends your image to your orchard host so far, it does no restarting
of containers.

For this step to work, your build will need something like the following in the build step:

          docker build --rm -t container_name .
          CID=$(docker run -d container_name /bin/echo hello world)
          docker wait $CID
          docker export $CID > ${WERCKER_OUTPUT_DIR}/container_name.tar

Where "container_name" is replaced with the name of your container (and should match
the name in export_filename above).

Please let me know if you find this step useful, or if you can suggest improvements.
