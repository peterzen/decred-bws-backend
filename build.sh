#!/bin/bash


CERTS_DIR=dcrd/certs

openssl ecparam -name secp521r1 -genkey -out $CERTS_DIR/dcrd.key

openssl req -new -x509 -key $CERTS_DIR/dcrd.key \
  -out $CERTS_DIR/dcrd.cert \
  -sha512 \
  -days 3650 \
  -extensions v3_req \
  -subj "/C=US/ST=US/L=NY/O=Decred/OU=Decred/CN=dcrd" \
  -config ./openssl.cnf


docker-compose build $*
