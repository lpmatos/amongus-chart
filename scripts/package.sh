#!/usr/bin/env bash

HOME=${1:-~/github/amongus-chart}

echo "Home directory: $HOME"
echo "Script helm package amongus discord chart"

echo "Validate helm template"
helm template amongus-chart $HOME/charts/amongus-discord

echo "Helm Package amongus discord chart"
helm package $HOME/charts/amongus-discord -u -d $HOME/repo
