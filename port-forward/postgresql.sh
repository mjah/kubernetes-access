#!/bin/bash
set -euo pipefail

echo "Accessing Postgresql..."
kubectl port-forward --namespace database svc/postgresql-postgresql 5433:5432 &
