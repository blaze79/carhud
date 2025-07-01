openssl.exe genrsa -out node-key.pem 2048
openssl.exe req -new -sha256 -key node-key.pem -days 3650 -config ssl.cnf -out node-csr.pem
openssl.exe req -in node-csr.pem -text -noout

openssl.exe x509 -req -in node-csr.pem -signkey node-key.pem -days 3650 -extfile ssl.cnf -extensions v3_req -out node-cert.pem
openssl.exe x509 -in node-cert.pem -text -noout

rem openssl.exe pkcs12 -export -out node_cert_with_key.p12 -inkey node-key.pem -in node-cert.pem


