#!/bin/bash
set -euo pipefail

echo "Accessing Istio Jaeger..."
kubectl port-forward -n istio-system $(kubectl get pod -n istio-system -l app=jaeger -o jsonpath='{.items[0].metadata.name}') 16686:16686 &
