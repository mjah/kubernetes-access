#!/bin/bash
set -euo pipefail

printf "Jenkins Login\n"
printf "Username: "
printf -- "$(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-user}" | base64 --decode)\n"
printf "Password: "
printf -- "$(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode)\n"
