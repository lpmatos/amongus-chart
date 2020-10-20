#!/usr/bin/env bash

HOME=${1:-~/github/amongus-chart}

echo "Home directory: $HOME"
echo "Script helm package Auto Deploy Kubernetes"

echo "Validate Helm template"
helm template auto-deploy $HOME

echo "Helm Package Auto Deploy"
helm package $HOME -u -d $HOME/repo
