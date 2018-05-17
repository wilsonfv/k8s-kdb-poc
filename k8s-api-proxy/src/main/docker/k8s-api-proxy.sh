#!/bin/sh

cd /etc/privoxy/
EXTERNAL_IP=$(curl -SsL --insecure https://kubernetes.default/api | jq -r '.serverAddressByClientCIDRs[0].serverAddress')
sed -i "s/CLUSTER_IP/${EXTERNAL_IP}/g" /etc/privoxy/k8s-rewrite-external.filter
sed -i "s/CLUSTER_IP/${EXTERNAL_IP}/g" /etc/privoxy/k8s-only.action
privoxy --no-daemon /etc/privoxy/config
