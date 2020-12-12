#!/bin/sh

envsubst < /root/.s3cfg.template > /root/.s3cfg

# Keep the container running
tail -f /dev/null
