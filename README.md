docker-pinrepo
====================

docker-pinrepo is based on OpenResty [1] and Pinterest Pinrepo [2]. It acts as a
web proxy to access private S3 bucket and very useful for artifact
access in continuous integration. It is also possible to bundle with 3rd party
authentication proxy like oauth2_proxy [3] for restricted access.

- [1] https://hub.docker.com/r/openresty/openresty/
- [2] https://github.com/pinterest/pinrepo/tree/master/nginx
- [3] https://github.com/bitly/oauth2_proxy

Example Usage
----
Just run the following command with the AWS information replaced:

```
docker run -d -e AWS_ACCESS_KEY_ID=$aws_access_key_id \
              -e AWS_SECRET_ACCESS_KEY=$aws_secret_access_key \
              -e S3_BUCKET=some-bucket \
              -e S3_REGION=ap-southeast-1 \
              -p 8001:80 dictcp/pinrepo
```

