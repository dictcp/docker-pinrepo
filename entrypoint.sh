#!/bin/sh

OPENRESTY_HOME=/usr/local/openresty
export NAMESERVER=`cat /etc/resolv.conf | grep "nameserver" | awk '{print $2}' | tr '\n' ' '`

envsubst '$AWS_ACCESS_KEY_ID $AWS_SECRET_ACCESS_KEY $S3_BUCKET $S3_REGION $NAMESERVER' > $OPENRESTY_HOME/nginx/conf/nginx.conf < $OPENRESTY_HOME/nginx/conf/nginx.conf.tpl

$OPENRESTY_HOME/bin/openresty -g "daemon off;"
