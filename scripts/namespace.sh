#!/usr/bin/env bash

NAMESPACE=${1:-amongus-discord}

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Namespace
metadata:
  name: $NAMESPACE
EOF
