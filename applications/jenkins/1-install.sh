#!/bin/bash

if [ -z "$JENKINS_USER" ]
then
  echo "\$JENKINS_USER is empty. Exiting."
  exit 1
fi

if [ -z "$JENKINS_PASS" ]
then
  echo "\$JENKINS_PASS is empty. Exiting."
  exit 1
fi

kubectl create namespace jenkins

helm install jenkins stable/jenkins \
--namespace jenkins \
--set master.adminUser="$JENKINS_USER" \
--set master.adminPassword="$JENKINS_PASS"
