#!/bin/bash
set -euo pipefail

kubectl create namespace jenkins

helm install jenkins stable/jenkins \
--namespace jenkins \
--set master.adminUser="$JENKINS_USER" \
--set master.adminPassword="$JENKINS_PASS"
