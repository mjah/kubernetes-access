#!/bin/bash

helm install ingress-nginx stable/nginx-ingress \
--namespace ingress-nginx \
--set controller.publishService.enabled=true
