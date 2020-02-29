#!/bin/bash
set -euo pipefail

kubectl create namespace ingress-nginx

helm install ingress-nginx stable/nginx-ingress \
--namespace ingress-nginx \
--set controller.publishService.enabled=true
