#!/usr/bin/env bash

PRIORITY_CLASS_NAME=${1:-high-priority-production}

cat <<EOF | kubectl apply -f -
apiVersion: scheduling.k8s.io/v1
kind: PriorityClass
metadata:
  name: $PRIORITY_CLASS_NAME
value: 1000000000
globalDefault: false
description: "This priority class should be used for production service pods only."
EOF
