mkdir certs
openssl req -config /etc/ssl/openssl.cnf \
  -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key \
  -x509 -days 365 -out certs/domain.crt \
  -subj "/C=US/ST=Oregon/L=Portland/O=Company Name/OU=Org/CN=openmpi-dockerregistry.local"

