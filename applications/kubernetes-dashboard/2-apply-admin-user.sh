#!/bin/bash
set -euo pipefail

kubectl apply -f "$(dirname $0)/admin-user.yaml"
