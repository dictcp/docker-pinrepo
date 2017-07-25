#!/bin/sh

OPENRESTY_HOME=/usr/local/openresty

envsubst '$AWS_ACCESS_KEY_ID $AWS_SECRET_ACCESS_KEY $S3_BUCKET $S3_REGION' > $OPENRESTY_HOME/nginx/conf/nginx.conf < $OPENRESTY_HOME/nginx/conf/nginx.conf.tpl

$OPENRESTY_HOME/bin/openresty -g "daemon off;"
