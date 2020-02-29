#!/bin/bash
set -euo pipefail

printf "Example tls secret creation:\n"
printf "\n"
printf -- "kubectl create secret tls \${CERT_NAME} \\";printf "\n"
printf -- "--namespace=\${NAMESPACE} \\";printf "\n"
printf -- "--key=\${KEY_FILE} \\";printf "\n"
printf -- "--cert=\${CERT_FILE}\n"
