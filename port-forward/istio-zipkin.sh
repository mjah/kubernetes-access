#!/bin/bash
set -euo pipefail

echo "Accessing Istio Zipkin..."
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=istio-ingressgateway -o jsonpath='{.items[0].metadata.name}') 15032:15032 &
