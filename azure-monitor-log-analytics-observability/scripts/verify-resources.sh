#!/bin/bash
set -e

RESOURCE_GROUP="monitoring-lab-rg"
WORKSPACE_NAME="monitoring-lab-workspace"

echo "===== RESOURCE GROUP ====="
az group show --name "$RESOURCE_GROUP" --output table

echo "===== LOG ANALYTICS WORKSPACE ====="
az monitor log-analytics workspace show \
  --resource-group "$RESOURCE_GROUP" \
  --workspace-name "$WORKSPACE_NAME" \
  --output table

echo "===== ALL RESOURCES ====="
az resource list \
  --resource-group "$RESOURCE_GROUP" \
  --output table
