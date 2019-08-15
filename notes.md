# read a certificate
openssl x509 -in cerfile.cer -noout -text

# launch root-ca container
docker-compose run root-ca bash

# set environment for config file
export OPENSSL_CONF=/root-ca/configs/root-ca-config.cnf

# create root-ca cert
openssl req -x509 -newkey rsa:2048 -out cacert.pem -outform PEM -days 1825