#!/bin/bash

printf "Example ca secret creation:\n"
printf "\n"
printf -- "kubectl create secret generic \${CERT_NAME} \\";printf "\n"
printf -- "--namespace=\${NAMESPACE} \\";printf "\n"
printf -- "--from-file=ca.crt=\${CERT_FILE}\n"
