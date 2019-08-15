mkdir -p /keypki/signedcerts;
mkdir -p /keypki/private;
cd /keypki;
export OPENSSL_CONF=/root-ca/configs/root-ca-config.cnf;
openssl req -x509 -passout env:ROOT_CERT_PASS -newkey rsa:2048 -out cacert.pem -outform PEM -days 1825