#!/usr/bin/env bash

NAMESPACE="amongus"

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Namespace
metadata:
  name: $NAMESPACE
EOF
