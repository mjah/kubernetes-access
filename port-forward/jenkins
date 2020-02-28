#!/bin/bash

echo "Accessing Jenkins..."
POD_NAME=$(kubectl get pods --namespace jenkins -l "app.kubernetes.io/component=jenkins-master" -l "app.kubernetes.io/instance=jenkins" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace jenkins port-forward $POD_NAME 8080:8080
