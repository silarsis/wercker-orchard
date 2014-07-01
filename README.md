wercker-orchard
===============

[![wercker status](https://app.wercker.com/status/727752ac9c747c8efb3d4ec0a2b8faf9/m "wercker status")](https://app.wercker.com/project/bykey/727752ac9c747c8efb3d4ec0a2b8faf9)

Deploy to orchard from Wercker

This step takes the following arguments:

* token - your Orchard token, found at https://www.orchardup.com/docs/api
* export_filename - the filename you will write your docker image to from
  the build process (name.tar below)
* image_tag - the docker tag to apply to your image once uploaded (repository
  will be set to 'wercker')
* host_id - defaults to 'default' for the default orchard host

This step only sends your image to your orchard host so far, it does no restarting
of containers.

For this step to work, your build will need something like the following in the build step:

          docker build --rm -t name .
          docker save name > ${WERCKER_OUTPUT_DIR}/name.tar

Where "name" is replaced with the name of your image (and should match
the name in export_filename above).

Please let me know if you find this step useful, or if you can suggest improvements.
