#!/bin/bash
############################################
#####   Ericom Shield Set Labels       #####
#######################################BH###

function usage() {
    echo " Usage: $0 <Node_Name>"
}

if [ -n "$1" ]; then
    NODE_NAME="$1"
  else
    usage
    exit 1
fi

kubectl label node $NODE_NAME shield-role/farm-services=accept
kubectl label node $NODE_NAME shield-role/remote-browsers=accept
kubectl label node $NODE_NAME shield-role/proxy=accept
kubectl label node $NODE_NAME shield-role/management=accept


