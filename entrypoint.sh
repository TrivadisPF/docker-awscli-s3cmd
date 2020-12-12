#!/bin/sh

envsubst < /root/.s3cfg > /root/.s3cfg.new

# Keep the container running
tail -f /dev/null
